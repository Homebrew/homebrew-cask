cask "gamemaker@beta" do
  version "2026.200.0.1217"
  sha256 "3e131b24a6b08546ea6dd968e9dd66ee947d488c92287b4176ff0b864ec59f7b"

  url "https://gms.yoyogames.com/GameMaker-#{version}.pkg"
  name "GameMaker Beta"
  desc "Complete development tool for making 2D games"
  homepage "https://gamemaker.io/"

  livecheck do
    url "https://gms.yoyogames.com/update-mac-NuBeta.rss"
    strategy :sparkle
  end

  depends_on :macos

  pkg "GameMaker-#{version}.pkg"

  postflight_steps do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "$APP_PATH"&` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    terminate_process(
      "/Applications/GameMaker Beta.app",
      match:           :full,
      attempts:        3,
      must_succeed:    false,
      notices:         [
        "The GameMaker package postinstall script launches the GameMaker app",
        "Attempting to close com.yoyogames.gms2-beta to avoid unwanted user intervention",
      ],
      failure_message: "Unable to forcibly close GameMaker Beta.app",
    )
  end

  uninstall pkgutil: "com.yoyogames.gms2-beta",
            delete:  "/Applications/GameMaker Beta.app"

  zap trash: "/Users/Shared/GameMakerStudio2-Beta"
end
