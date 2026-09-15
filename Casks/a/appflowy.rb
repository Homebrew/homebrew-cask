cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  name_start = on_system_conditional macos: "Appflowy", linux: "AppFlowy"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "0.14.2"
  sha256 arm:          "f5edd890e0916060b1c45c113db6051b36ffe6871af6cdee8817a530489274d7",
         intel:        "f29cb26f0f822b19eea61b8464205a778d2da58ca7d6344029671d3921b06c87",
         x86_64_linux: "f816d45252eb3df5146e98df5b20a60f278134544d3dd381dd6497b6b6028dda"

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
