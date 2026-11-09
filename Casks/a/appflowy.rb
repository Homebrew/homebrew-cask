cask "appflowy" do
  os macos: "macos-universal.zip", linux: "linux-x86_64.AppImage"

  version "0.15.0"
  sha256 arm:          "b0a85b0a8f51d96f2c89cb1f46aca61d45ace044bad66300fe93f9d3a4743dec",
         intel:        "b0a85b0a8f51d96f2c89cb1f46aca61d45ace044bad66300fe93f9d3a4743dec",
         x86_64_linux: "ff052dd8838d9a79460ec2e84ff6c761a2c841b28151a7057b9d05b6fc7dc1af"

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
