cask "lightproxy" do
  version "1.1.41"
  sha256 "e71f606717712eabb06e1cf0c643302f8d52d339d227367a16ca519883d4bd00"

  url "https://github.com/alibaba/lightproxy/releases/download/v#{version}/LightProxy-#{version}.dmg",
      verified: "github.com/alibaba/lightproxy/"
  name "LightProxy"
  desc "Proxy & Debug tools based on whistle with Chrome Devtools UI"
  homepage "https://alibaba.github.io/lightproxy/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "LightProxy.app"

  uninstall_postflight_steps do
    delete_keychain_certificate "LightProxy"
  end

  caveats do
    requires_rosetta
  end
end
