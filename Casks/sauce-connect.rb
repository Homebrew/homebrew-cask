cask "sauce-connect" do
  version "4.6.5"
  sha256 "adc9f16c619fe106579e3c38db8446920fb566dec1ebc6491c8fc431cb8e2de8"

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
