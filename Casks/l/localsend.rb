cask "localsend" do
  version "1.17.0"

  artifact = on_system_conditional macos: "LocalSend-#{version}.dmg",
                                   linux: "LocalSend-#{version}-linux-x86-64.AppImage"

  url "https://github.com/localsend/localsend/releases/download/v#{version}/#{artifact}",
      verified: "github.com/localsend/localsend/"
  name "LocalSend"
  desc "Open-source cross-platform alternative to AirDrop"
  homepage "https://localsend.org/"

  on_macos do
    sha256 "fdf1a42ee13eb9fdd6ae94dc5883981e8a09599e758bde23f6e677c4fab5c93c"

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
    sha256 "c1a1e7bc7bb7eebdf6c365a30cef0d4ba3e6bb79961c3b94edf918920f8e36f0"

    depends_on arch: :x86_64
    app_image artifact, target: "LocalSend.AppImage"
  end
end
