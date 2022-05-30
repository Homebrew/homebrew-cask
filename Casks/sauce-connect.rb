cask "sauce-connect" do
  version "4.8.0"
  sha256 "8591295a1f7deb4f0309d7c93eae2eea86fde41e908a160fea077ab764564f9f"

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
