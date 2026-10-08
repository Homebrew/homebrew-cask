cask "appflowy" do
  os macos: "macos-arm64", linux: "linux-x86_64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.14.8"
  sha256 arm:          "dc807b56b88c0cf3436e7fd779cece14160cf8d413b8c605430d09108add1c72",
         x86_64_linux: "504f333196bf4301198ac2aaa956a8f1b7bc5ce805601cf689c9ee11fd7549c3"

  on_macos do
    depends_on arch: :arm64
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
  end

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/AppFlowy-#{version}-#{os}.#{url_end}"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
