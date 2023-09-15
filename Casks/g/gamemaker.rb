cask "gamemaker" do
  version "2023.8.1.102"
  sha256 "78d5d20299eba5e2c75038ef575d5a7776c07c6d8d5a0c1fe7e9bb6b6ac0983a"

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
