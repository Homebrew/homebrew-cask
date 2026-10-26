cask "psysonic" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.56.0"
  sha256 arm:          "b748b6b76fece78df681dac7a97b15a1002f557ccae753256f174d81a96e743e",
         intel:        "65341489c765a7120615de12c8e9fd1abbbb592d9f0bad0c38db16a959d15b9a",
         x86_64_linux: "cae2a7290f5de3e332cc240e5ab3867d2dadaa58ec5fe05cb77dbfc59709fd99"

  on_macos do
    auto_updates true

    app "Psysonic.app"

    uninstall quit: "dev.psysonic.player"

    zap trash: [
      "~/Library/Application Support/dev.psysonic.player",
      "~/Library/Caches/dev.psysonic.player",
      "~/Library/Preferences/dev.psysonic.player.plist",
      "~/Library/Saved Application State/dev.psysonic.player.savedState",
      "~/Library/WebKit/dev.psysonic.player",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Psysonic_#{version}_#{arch}.AppImage", target: "Psysonic.AppImage"
  end

  url "https://github.com/Psysonic/psysonic/releases/download/app-v#{version}/Psysonic_#{version}_#{arch}.#{url_end}"
  name "Psysonic"
  desc "Desktop client for Navidrome and other Subsonic-compatible servers"
  homepage "https://www.psysonic.de/"
end
