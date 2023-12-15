cask "gamemaker" do
  version "2023.11.0.121"
  sha256 "7c7d0b2e835fd72a4d942285ef9ed30cc96d1fd14aceab5f1699b7c7fdf6682b"

  url "https://gms.yoyogames.com/GameMaker-#{version}.pkg",
      verified: "gms.yoyogames.com/"
  name "GameMaker"
  desc "Complete development tool for making 2D games"
  homepage "https://gamemaker.io/"

  livecheck do
    url "https://gamemaker.io/en/download"
    regex(%r{href=.*?/GameMaker-(\d+(?:\.\d+)*)\.pkg.+is-primary}i)
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

  uninstall delete:  "/Applications/GameMaker.app",
            pkgutil: "com.yoyogames.gms2"

  zap trash: "/Users/Shared/GameMakerStudio2"
end
