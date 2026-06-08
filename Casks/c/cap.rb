cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.5.1,01KTM3K7D9J92JVBGSNHPGNPTZ"
    sha256 "cab880389a9cb9fcee99c9beb14b7c271bc8b5eeb7f4979fd2e1301e0c050738"
  end
  on_intel do
    version "0.5.1,01KTM3H5HKNTFZSC8VSC2NPY1Q"
    sha256 "0654e7815f1e5a321e57846963754aca1953cf4335fd8f83719ba631e79efd65"
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
