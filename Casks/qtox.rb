cask 'qtox' do
  version '1.11.0'
  sha256 'c34dd0ba34f95a20ae22f51f0fa30a46bccda670a0ee8eb3ab63838c495366d3'

  # github.com/tux3/qTox was verified as official when first introduced to the cask
  url "https://github.com/tux3/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/tux3/qtox/releases.atom',
          checkpoint: '6a9da0bb08153a6202a2b1a55fd25749873da232b1ff19f8fc04175d8aa8a460'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
