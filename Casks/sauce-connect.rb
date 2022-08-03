cask "sauce-connect" do
  version "4.8.1"
  sha256 "d0cc8ab185c2b930a2ae412410ff7457420ca68d6f79ab1c25cbefedf9e9031a"

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
