cask 'clipy' do
  version '1.1.4'
  sha256 'ad1199738cdd55eae433de8aed97acebf704d9075613391f65badf5dc5020b3c'

  # github.com/Clipy/Clipy was verified as official when first introduced to the cask
  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: '9285449aa0a030aac01058fd77b815636aba1eee88b351277b1e2e2950e96032'
  name 'Clipy'
  homepage 'https://clipy-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Clipy.app'
end
