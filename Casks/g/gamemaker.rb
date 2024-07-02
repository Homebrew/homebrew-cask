cask "gamemaker" do
  version "2024.6.0.157"
  sha256 "19b6010a2cf795dcfbbae06442286c32755330d34024b69f1a67ec7be1bbd85d"

  url "https://gms.yoyogames.com/GameMaker-#{version}.pkg",
      verified: "gms.yoyogames.com/"
  name "GameMaker"
  desc "Complete development tool for making 2D games"
  homepage "https://gamemaker.io/"

  livecheck do
    url "https://gamemaker.io/en/download/mac/monthly/GameMaker.pkg"
    strategy :header_match
  end

  pkg "GameMaker-#{version}.pkg"

  postflight do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "$APP_PATH"&` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    retries ||= 3
    ohai "The GameMaker package postinstall script launches the GameMaker app" if retries >= 3
    ohai "Attempting to close com.yoyogames.gms2 to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/GameMaker.app"]
  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close GameMaker.app"
  end

  uninstall pkgutil: "com.yoyogames.gms2",
            delete:  "/Applications/GameMaker.app"

  zap trash: "/Users/Shared/GameMakerStudio2"
end
