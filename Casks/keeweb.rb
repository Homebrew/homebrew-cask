cask "keeweb" do
  version "1.18.2"

  if Hardware::CPU.intel?
    sha256 "19c199d2a2fef3290be502e9ad445cd8080a8c3d9a9810d79a7e5bf163a661f2"
    url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg",
        verified: "github.com/keeweb/keeweb/"
  else
    sha256 "6a171a6083433db598b464eaeae619606ddb8e2a3c4323efa35bef4f2e1a7e22"
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
