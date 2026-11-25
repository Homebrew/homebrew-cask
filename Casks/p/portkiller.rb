cask "portkiller" do
  os macos: "macos.dmg", linux: "linux-x86_64.AppImage"

  version "3.4.0"
  sha256 arm:          "5265966e7308461b76f8bc35a4b0d28ba6f72150e4715d9a68b8c91b11d8fa60",
         intel:        "5265966e7308461b76f8bc35a4b0d28ba6f72150e4715d9a68b8c91b11d8fa60",
         x86_64_linux: "63330290a1b6e671e6ba4da3e607879666281bb48fd26a52d17af2bb2606286e"

  on_macos do
    auto_updates true
    depends_on macos: :sequoia

    app "PortKiller.app"

    uninstall quit: "com.portkiller.app"

    zap trash: [
      "~/Library/Caches/com.portkiller.app",
      "~/Library/HTTPStorages/com.portkiller.app",
      "~/Library/HTTPStorages/com.portkiller.app.binarycookies",
      "~/Library/Preferences/com.portkiller.app.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "PortKiller-v#{version}-linux-x86_64.AppImage", target: "PortKiller.AppImage"

    zap trash: "~/.config/port-killer"
  end

  url "https://github.com/productdevbook/port-killer/releases/download/v#{version}/PortKiller-v#{version}-#{os}"
  name "PortKiller"
  desc "Monitor listening ports and kill their processes"
  homepage "https://github.com/productdevbook/port-killer"
end
