cask 'grabbox' do
  version '2.0.2'
  sha256 '4413c7e9035b4b0e18e979d3cb74dade8c9672bdca409cf3771af80e592ec3e3'

  url "https://grabbox.bitspatter.com/updates/GrabBox-#{version}.zip"
  appcast 'https://grabbox.bitspatter.com/updates/appcast.xml',
          checkpoint: 'fd68ecdde99fa9c2ef46c5954487c9429d6035db816afac20902a53ad072bc88'
  name 'GrabBox'
  homepage 'https://grabbox.bitspatter.com/'

  app 'GrabBox.app'
end
