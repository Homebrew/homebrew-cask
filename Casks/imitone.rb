cask 'imitone' do
  version '0.9.1'
  sha256 '6a999d3c4f134fb265b61278a24a3bb4bd849dc749f58ee9f538e1214b8869a7'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast 'https://imitone.com/beta/',
          checkpoint: 'd24a5abc0f3ffb9751b922e53746147d66983677043b85221560b3951d0a83f7'
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
