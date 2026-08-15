cask "gamemaker@lts2026" do
  version "2026.0.0.16"
  sha256 "1b69aa2fedb0f29ae1e9e7e2500ba29dfadacf6fa2a022d03041f72080603c6e"

  url "https://gms.yoyogames.com/GameMaker-#{version}.pkg"
  name "GameMaker LTS 2026"
  desc "Complete development tool for making 2D games (LTS 2026)"
  homepage "https://gamemaker.io/"

  livecheck do
    url "https://gms.yoyogames.com/update-mac-LTS2026.rss"
    strategy :sparkle
  end

  auto_updates false
  depends_on :macos

  pkg "GameMaker-#{version}.pkg"

  postflight_steps do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "$APP_PATH"&` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    terminate_process(
      "/Applications/GameMaker LTS 2026.app",
      match:           :full,
      attempts:        3,
      must_succeed:    false,
      notices:         [
        "The GameMaker package postinstall script launches the GameMaker app",
        "Attempting to close com.yoyogames.gm-lts2026 to avoid unwanted user intervention",
      ],
      failure_message: "Unable to forcibly close GameMaker LTS 2026.app",
    )
  end

  uninstall pkgutil: "com.yoyogames.gm-lts2026",
            delete:  "/Applications/GameMaker LTS 2026.app"

  zap trash: "/Users/Shared/GameMaker-LTS2026"
end
