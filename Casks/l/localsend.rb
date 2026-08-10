cask "localsend" do
  os macos: ".dmg", linux: "-linux-x86-64.AppImage"

  version "1.18.0"

  on_macos do
    sha256 "93ab884c2703a0fabd72611097b2616c0def86c4256cea2add7a0ff36dd76b3a"

    depends_on macos: :big_sur

    app "LocalSend.app"

    zap trash: [
      "~/Library/Application Scripts/org.localsend.localsendApp",
      "~/Library/Containers/org.localsend.localsendApp",
      "~/Library/Preferences/org.localsend.localsendApp.plist",
      "~/Library/Saved Application State/org.localsend.localsendApp.savedState",
    ]
  end
  on_linux do
    sha256 "c873bd1480f9756e117ccca668a698bed9e506447884059a7d37d5d64fb65fe2"

    depends_on arch: :x86_64

    app_image "LocalSend-#{version}-linux-x86-64.AppImage", target: "LocalSend.AppImage"
  end

  url "https://github.com/localsend/localsend/releases/download/v#{version}/LocalSend-#{version}#{os}"
  name "LocalSend"
  desc "Open-source cross-platform alternative to AirDrop"
  homepage "https://localsend.org/"
end
