cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.3.41,01JRZ4B8S469Q8PDGSETPN4MEJ"
    sha256 "8f566c3fccd313f147f498fc9463277440203fe1eec8e80b668e6887c2e1a442"
  end
  on_intel do
    version "0.3.41,01JRZ3ST4T695CRR10QVJMPE7Z"
    sha256 "0edce84dd3fce4819f29d170c685cf88df442cc3d0f431aa020ba6d441af8d87"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "crabnebula.app/asset/"
  name "Cap"
  desc "Screen recording software"
  homepage "https://cap.so/"

  livecheck do
    url "https://cdn.crabnebula.app/update/cap/cap/darwin-#{arch}/0.0.0"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
