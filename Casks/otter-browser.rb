cask "otter-browser" do
  version "0.9.99.3"
  sha256 "bcabef7930225016ccda4dbc68ef6febac7c6ec2b0e2dbfb8c34d15d843d2dac"

  # sourceforge.net/otter-browser/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/otter-browser/otter-browser-#{version}-setup.dmg"
  appcast "https://sourceforge.net/projects/otter-browser/rss"
  name "Otter Browser"
  homepage "https://otter-browser.org/"

  app "Otter Browser.app"
end
