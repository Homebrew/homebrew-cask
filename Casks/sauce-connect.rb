cask "sauce-connect" do
  version "4.7.1"
  sha256 "198ed62080372822d6588bb55dfd292b044e7dce711be665b897c629c33ba854"

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name "Sauce Connect"
  desc "Proxy server to securely connect to the Sauce Labs automated testing platform"
  homepage "https://docs.saucelabs.com/secure-connections/sauce-connect/"

  livecheck do
    url "https://changelog.saucelabs.com/en?category=sauce%20connect"
    regex(/Sauce Connect Proxy Version (\d+(?:\.\d+)+)/i)
  end

  binary "sc-#{version}-osx/bin/sc"
end
