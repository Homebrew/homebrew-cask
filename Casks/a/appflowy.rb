cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  name_start = on_system_conditional macos: "Appflowy", linux: "AppFlowy"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "0.14.4"
  sha256 arm:          "94bbd7367f231c1e490d5bbfff07f1dba72c131af3ca9b078ab55090c17f2399",
         intel:        "006d9cc72baf8207a8cecfea5346ac17eb5670edcee8ccce63f35a81e9f0fdce",
         x86_64_linux: "17958d03bf73301fe397c87f96a93ea2fa221a6895d1ae84dcd000815864ef76"

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
