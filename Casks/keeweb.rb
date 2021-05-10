cask "keeweb" do
  version "1.18.3"

  if Hardware::CPU.intel?
    sha256 "d7b9547d9a3b76a42d08f0f0c2a31f0beb83fe8376debf29120fe81bc793f8f4"
    url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.x64.dmg",
        verified: "github.com/keeweb/keeweb/"
  else
    sha256 "400f79ad9398ff4bb6ca6c6f5bb6594c6b2b21ee6caa9bce51013718c0841315"
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
