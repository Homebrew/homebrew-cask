cask "sysdig-inspect" do
  version "0.5.0"
  sha256 "15cd21f309258f5017129e0983e475423d95eb54cbe6e4e25b2e509282122a8e"

  # download.sysdig.com/stable/sysdig-inspect/ was verified as official when first introduced to the cask
  url "https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-#{version}-mac.dmg"
  appcast "https://github.com/draios/sysdig-inspect/releases.atom"
  name "Sysdig Inspect"
  homepage "https://github.com/draios/sysdig-inspect"

  app "Sysdig Inspect.app"
end
