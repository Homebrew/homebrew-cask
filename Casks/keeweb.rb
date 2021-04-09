cask "keeweb" do
  version "1.17.6"

  if Hardware::CPU.intel?
    sha256 "d6996ec8706620ba39eec3804c46ecedd7e95c2ce9d0b6de054666dc713dbf5a"
    url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg",
        verified: "github.com/keeweb/keeweb/"
  else
    sha256 "70aa0975ae43beaebf50dff944d7116b5482bb50e6fbc0d64f4bcbaf21afdcb7"
    url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.arm64.dmg",
        verified: "github.com/keeweb/keeweb/"
  end

  name "KeeWeb"
  desc "Password manager compatible with KeePass"
  homepage "https://keeweb.info/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "KeeWeb.app"

  uninstall_preflight do
    set_ownership "#{appdir}/KeeWeb.app"
  end
end
