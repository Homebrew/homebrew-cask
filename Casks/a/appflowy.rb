cask "appflowy" do
  os macos: "macos-universal.zip", linux: "linux-x86_64.AppImage"

  version "0.14.10"
  sha256 arm:          "f883664781aba131a3c3c22035e69829410275289f26c3c891c427d8a6871b3a",
         intel:        "f883664781aba131a3c3c22035e69829410275289f26c3c891c427d8a6871b3a",
         x86_64_linux: "77da61110ca8c0eb3f3cdb6e9f01bbba9fc9aae21d66d32bd109b29054739a9f"

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
