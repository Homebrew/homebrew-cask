cask "gamemaker" do
  version "2024.13.1.193"
  sha256 "470d9beb8eb0afbb1eca298e7320df56d11bc4d55e76e2e806fe040c98bb35e3"

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
