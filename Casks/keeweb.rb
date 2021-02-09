cask "keeweb" do
  version "1.16.7"

  if Hardware::CPU.intel?
    sha256 "793aae610275f762e7d96822f88f908ef290403fa4d3c26f30e56fdcda55a147"
    url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg",
        verified: "github.com/keeweb/keeweb/"
  else
    sha256 "e74f7a088ec689b0ec6420aecc78c60aad12e48292867748e263b1990ec5135c"
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
