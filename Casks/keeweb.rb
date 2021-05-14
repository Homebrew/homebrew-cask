cask "keeweb" do
  version "1.18.4"

  if Hardware::CPU.intel?
    sha256 "1c9f4d8cafc78d9d4c61211647be98bc44057293de9413ec52027248d699f6b9"
    url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg",
        verified: "github.com/keeweb/keeweb/"
  else
    sha256 "5db8af72a10f74390ec5357a2ba50a05c2304521090dea30ebdb1b0bfd1a6105"
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
