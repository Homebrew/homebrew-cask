cask "keeweb" do
  version "1.17.0"

  if Hardware::CPU.intel?
    sha256 "9e7f9f3f346853fe4ad70ea313f1538d640ea0dc8ad96b2594b254c87c5790d8"
    url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg",
        verified: "github.com/keeweb/keeweb/"
  else
    sha256 "4c9854b3ba80f902bfd015df15b246cebf8d9a007b69a7a2dede8eba076428fe"
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
