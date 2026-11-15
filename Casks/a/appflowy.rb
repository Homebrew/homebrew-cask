cask "appflowy" do
  os macos: "macos-universal.zip", linux: "linux-x86_64.AppImage"

  version "0.15.1"
  sha256 arm:          "d9015b846ea3e3c1ee9ed438b02675352c69fddefb87375021408b2d39047dce",
         intel:        "d9015b846ea3e3c1ee9ed438b02675352c69fddefb87375021408b2d39047dce",
         x86_64_linux: "915277d45cd05046e6d6f074d37050af12a9708e88b3b7aa9d350ec48136ca1b"

  on_macos do
    depends_on macos: :monterey

    app "AppFlowy.app"

    zap trash: [
      "~/Library/Application Scripts/com.appflowy.macos",
      "~/Library/Application Support/com.appflowy.appflowy.flutter",
      "~/Library/Containers/com.appflowy.macos",
      "~/Library/Preferences/com.appflowy.appflowy.flutter.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "AppFlowy-#{version}-linux-x86_64.AppImage", target: "AppFlowy.AppImage"

    zap trash: "~/.local/share/AppFlowy"
  end

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/AppFlowy-#{version}-#{os}"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
