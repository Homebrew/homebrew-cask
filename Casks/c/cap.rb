cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.5.6,01KX1YB8R7ZX65Z1DQY642R7C3"
    sha256 "0291f134159feeae5f1f3850e37b8ccb82c6ecc269ca158446050482073954b8"
  end
  on_intel do
    version "0.5.6,01KX1Y8RFPG4M4DK5M364X6RSC"
    sha256 "dcb679efccfe9421a010470d7246c9a27b13040dc423cca5e3b8dbd9aa699773"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "crabnebula.app/asset/"
  name "Cap"
  desc "Screen recording software"
  homepage "https://cap.so/"

  livecheck do
    url "https://cdn.crabnebula.app/update/cap/cap/darwin-#{arch}/0.0.0"
    regex(%r{/asset/([^?/]+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
