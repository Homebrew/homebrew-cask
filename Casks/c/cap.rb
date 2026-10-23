cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.6.1,01M5CGZ4SP1284TJD3KQZNZ67M"
    sha256 "81dd546b0dc5306800b56a308b5643d3d7ac915d0af749d207cff49963f2d9e8"
  end
  on_intel do
    version "0.6.1,01M5CGZ8TYVSNPKH5JGHQW73T6"
    sha256 "3a5c04d1b63de644d4b45155d54a39bdc74380933b25509e5d7ee895b9a3c17a"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
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
  depends_on macos: :monterey

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Application Support/so.cap.desktop",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Logs/so.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Preferences/so.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
