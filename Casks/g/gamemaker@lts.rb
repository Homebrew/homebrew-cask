cask "gamemaker@lts" do
  version "2026.0.0.16"
  sha256 "1b69aa2fedb0f29ae1e9e7e2500ba29dfadacf6fa2a022d03041f72080603c6e"

  url "https://gms.yoyogames.com/GameMaker-#{version}.pkg"
  name "GameMaker LTS #{version.major}"
  desc "Complete development tool for making 2D games"
  homepage "https://gamemaker.io/"

  livecheck do
    url "https://gms.yoyogames.com/update-mac-LTS#{version.major}.rss"
    strategy :sparkle
  end

  depends_on :macos

  pkg "GameMaker-#{version}.pkg"

  postflight_steps do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "$APP_PATH"&` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    terminate_process(
      "/Applications/GameMaker LTS #{version.major}.app",
      match:           :full,
      attempts:        3,
      must_succeed:    false,
      notices:         [
        "The GameMaker package postinstall script launches the GameMaker app",
        "Attempting to close com.yoyogames.gm-lts#{version.major} to avoid unwanted user intervention",
      ],
      failure_message: "Unable to forcibly close GameMaker LTS #{version.major}.app",
    )
  end

  uninstall pkgutil: "com.yoyogames.gm-lts#{version.major}",
            delete:  "/Applications/GameMaker LTS #{version.major}.app"

  zap trash: "/Users/Shared/GameMakerStudio2-LTS#{version.major}"
end
