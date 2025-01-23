cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.3.13,01JJA4297VKPJ3RCNZ5KSBKZY2"
    sha256 "a86f57ee3033072ff49dfd6095871250a156c2fd41cc82a44dfe4fd6e17fd8ec"
  end
  on_intel do
    version "0.3.13,01JJA41ECAH05HES174A82YSJR"
    sha256 "dd73b4a3d1332fa20e858b0d86804d73ad61382b960630cfcbe15f94ae3699cd"
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
