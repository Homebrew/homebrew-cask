cask 'freedom' do
  version '1.6.12'
  sha256 'd03c98e7d2da8ece1d19d3ffcac71aa251ed12b5793038ee16dac669d41d7948'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
