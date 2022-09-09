cask "gamemaker" do
  version "2022.8.0.34"
  sha256 "7e661c747588d33f4ad0bd7e2974b3b05605d745227ac736f9085009b9074c87"

  url "https://gms.yoyogames.com/GameMaker-#{version}.pkg",
      verified: "gms.yoyogames.com/"
  name "GameMaker"
  desc "Complete development tool for making 2D games"
  homepage "https://gamemaker.io/"

  livecheck do
    url "https://gms.yoyogames.com/update-mac.rss"
    strategy :sparkle
  end

  pkg "GameMaker-#{version}.pkg"

  postflight do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "$APP_PATH"&` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    retries ||= 3
    ohai "The GameMaker package postinstall script launches the GameMaker app" unless retries < 3
    ohai "Attempting to close com.yoyogames.gms2 to avoid unwanted user intervention" unless retries < 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/GameMaker.app"]

    rescue RuntimeError
      sleep 1
      retry unless (retries -= 1).zero?
      opoo "Unable to forcibly close GameMaker.app"
  end

  uninstall pkgutil: "com.yoyogames.gms2"

  zap trash: "/Users/Shared/GameMakerStudio2"
end
