cask "sauce-connect" do
  version "4.6.2"
  sha256 "bef3bb82a26b794193a750cff5c809275140fe98295369450708d9b24fd79857"

  url "https://saucelabs.com/downloads/sc-#{version}-osx.zip"
  name "Sauce Connect"
  homepage "https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy"

  binary "sc-#{version}-osx/bin/sc"
end
