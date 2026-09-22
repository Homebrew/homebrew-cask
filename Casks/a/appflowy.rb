cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  name_start = on_system_conditional macos: "Appflowy", linux: "AppFlowy"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "0.14.5"
  sha256 arm:          "844610832494c7dad0c306a39e668130b160ae74aa0fa16ae1c9ce76aa224596",
         intel:        "2ca7f2c90998558a9bd117ca91d273350f309bf78d68c5353df037b8a5efc76c",
         x86_64_linux: "053e1cfdab7c8cf367a02451bf20c2304b2d24e51bbca31f2eac4bc253e3e8f0"

  on_macos do
    depends_on macos: :monterey

    app "AppFlowy-#{arch}.app", target: "AppFlowy.app"

    zap trash: [
      "~/Library/Application Scripts/com.appflowy.macos",
      "~/Library/Containers/com.appflowy.macos",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "AppFlowy-#{version}-linux-#{arch}.AppImage", target: "AppFlowy.AppImage"
  end

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/#{name_start}-#{version}-#{os}-#{arch}.#{url_end}"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
