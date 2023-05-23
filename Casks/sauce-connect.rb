cask "sauce-connect" do
  version "4.9.0"
  sha256 "a0493a933b0a23421fdacc641b6cf94302f1755333969c179dc1dedd26a5e69d"

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
