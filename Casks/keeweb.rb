cask "keeweb" do
  version "1.16.8"

  if Hardware::CPU.intel?
    sha256 "2114d6c5a2e751e886ce8b58e763d8c4abf066d9e4674f08cd7d4e874c18fb31"
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
