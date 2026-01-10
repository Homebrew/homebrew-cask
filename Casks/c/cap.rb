cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.4.2,01KEJMZ5JP53V2N7Q2THP7GXGG"
    sha256 "bed6ca2850779f3bf640ac66b35b0e9ef1000a7d51a5aa8dd67b1f468e96de12"
  end
  on_intel do
    version "0.4.2,01KEJMZBCYQZFYYAZ6W1YQ9CJR"
    sha256 "473ea712c46705039b105766be3847bbf0d0504b1438aaeb21fe1015383e6c35"
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

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
