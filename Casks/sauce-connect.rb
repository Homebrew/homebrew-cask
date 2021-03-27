cask "sauce-connect" do
  version "4.6.4"
  sha256 "c24ebe9bcc4da942b5e40c1f0845e08ac7d483a420adddaf1f664ad4741e46f7"

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
