cask 'grabbox' do
  version '2.0.4'
  sha256 '0609b8c1a4f03e3f458ac9e2053ff3c06d4b8de8867f7b5e786d2e4bb0bac3a2'

  url "https://grabbox.bitspatter.com/updates/GrabBox-#{version}.zip"
  appcast 'https://grabbox.bitspatter.com/updates/appcast.xml'
  name 'GrabBox'
  homepage 'https://grabbox.bitspatter.com/'

  app 'GrabBox.app'
end
