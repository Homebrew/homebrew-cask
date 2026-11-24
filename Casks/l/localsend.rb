cask "localsend" do
  os macos: ".dmg", linux: "-linux-x86-64.AppImage"

  version "1.19.0"
  sha256 arm:          "5645789cc976298b893267c025f0945d8673baed3bb302a201eb8b96991e43d4",
         intel:        "5645789cc976298b893267c025f0945d8673baed3bb302a201eb8b96991e43d4",
         x86_64_linux: "e72ce88383a32beec9701583c22e298037f7683f9590cea7b3a281f58c2ec2b3"

  on_macos do
    app "LocalSend.app"

    zap trash: [
      "~/Library/Application Scripts/org.localsend.localsendApp",
      "~/Library/Application Scripts/org.localsend.localsendApp.ShareExtension",
      "~/Library/Containers/org.localsend.localsendApp",
      "~/Library/Containers/org.localsend.localsendApp.ShareExtension",
      "~/Library/Preferences/org.localsend.localsendApp.plist",
      "~/Library/Saved Application State/org.localsend.localsendApp.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "LocalSend-#{version}-linux-x86-64.AppImage", target: "LocalSend.AppImage"

    zap trash: "~/.local/share/org.localsend.localsend_app"
  end

  url "https://github.com/localsend/localsend/releases/download/v#{version}/LocalSend-#{version}#{os}"
  name "LocalSend"
  desc "Open-source cross-platform alternative to AirDrop"
  homepage "https://localsend.org/"
end
