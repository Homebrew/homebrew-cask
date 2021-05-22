cask "keeweb" do
  version "1.18.6"

  if Hardware::CPU.intel?
    sha256 "f3eecdcda1d570b8a729be7b480709985d85a32f517f1161713c73bcbd094894"
    url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg",
        verified: "github.com/keeweb/keeweb/"
  else
    sha256 "d41358ea4452d05f80508fbcd191858bf7a4dbc34c3f5b9ec68d54391cf90fa8"
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
