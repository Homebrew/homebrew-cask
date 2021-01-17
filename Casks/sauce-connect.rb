cask "sauce-connect" do
  version "4.6.3"
  sha256 "6cecff371b7daa33d227cd3eee55812084f61df7c7c8be46297fc03682a33744"

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name "Sauce Connect"
  homepage "https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/sc-(\d+(?:\.\d+)*)-osx\.zip}i)
  end

  binary "sc-#{version}-osx/bin/sc"
end
