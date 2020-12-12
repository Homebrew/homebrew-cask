cask "openttd" do
  version "1.10.3"
  sha256 "7ed03914700007849ab46fdb1a874267e7b53b637abfc5bad7b4c92001a7b858"

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macosx.zip"
  appcast "https://www.openttd.org/downloads/openttd-releases/latest.html"
  name "OpenTTD"
  homepage "https://www.openttd.org/"

  app "OpenTTD.app"
end
