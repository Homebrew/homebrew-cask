cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.3.63,01K22GWCZBNFE8NV6CM9DYCP5M"
    sha256 "c152ab20204d432a7d4b7a7a7e97d6666e0867a94180793c2d505ad7841c2932"
  end
  on_intel do
    version "0.3.63,01K22FB751NG2A5R6XYXP6D28B"
    sha256 "fd05b1891c9af90d2f09650e3291afb0f78552f1633f9a98ce3e59b865388992"
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
