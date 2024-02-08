cask "sauce-connect" do
  version "4.9.1"
  sha256 "ead25acaaa3ea7b3cccfc33ae758a41f3ead1231a34487df3aa4017219295b94"

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name "Sauce Connect"
  desc "Proxy server to securely connect to the Sauce Labs automated testing platform"
  homepage "https://docs.saucelabs.com/secure-connections/sauce-connect/"

  livecheck do
    url "https://docs.saucelabs.com/secure-connections/sauce-connect/installation/index.html"
    regex(/href=.*?sc[._-]v?(\d+(?:\.\d+)+)[._-]osx\.zip/i)
  end

  binary "sc-#{version}-osx/bin/sc"

  # No zap stanza required
end
