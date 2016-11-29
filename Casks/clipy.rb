cask 'clipy' do
  version '1.1.2'
  sha256 '21853e4bb4e3705edc0d61457d38016aac20166ab61579ad62a46c8f05566d8c'

  # github.com/Clipy/Clipy was verified as official when first introduced to the cask
  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: '77039d3fb2d280036ae72808ed465e9debfa0eb03dfea4967b8f62154328a011'
  name 'Clipy'
  homepage 'https://clipy-app.com/'

  depends_on macos: '>= :mavericks'

  app 'Clipy.app'
end
