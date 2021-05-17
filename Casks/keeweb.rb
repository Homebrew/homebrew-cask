cask "keeweb" do
  version "1.18.5"

  if Hardware::CPU.intel?
    sha256 "778b81b37a2d6861304b6c980001342a80ca6d5fbd54dae6bc60a9f96b992cd2"
    url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg",
        verified: "github.com/keeweb/keeweb/"
  else
    sha256 "a593c8dfcf17cf3af6584bbb8463d2bb437100f8146f34805a20e1b346564c9e"
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
