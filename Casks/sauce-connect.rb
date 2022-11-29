cask "sauce-connect" do
  version "4.8.2"
  sha256 "28277ce81ef9ab84f5b87b526258920a8ead44789a5034346e872629bbf38089"

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name "Sauce Connect"
  desc "Proxy server to securely connect to the Sauce Labs automated testing platform"
  homepage "https://docs.saucelabs.com/secure-connections/sauce-connect/"

  livecheck do
    url "https://docs.saucelabs.com/secure-connections/sauce-connect/installation/index.html"
    regex(/href=.*?sc[._-]v?(\d+(?:\.\d+)+)[._-]osx\.zip/i)
  end

  binary "sc-#{version}-osx/bin/sc"
end
