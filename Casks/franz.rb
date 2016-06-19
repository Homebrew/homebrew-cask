cask 'franz' do
  version '3.0.0'
  sha256 '59f7d8178fae62e69f0248af7c5990106ded4abe747835def40d2fdf36e18a0c'

  url "https://github.com/imprecision/franz-app/releases/download/#{version}/Franz-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/imprecision/franz-app/releases.atom',
          checkpoint: '6d27627b4f4ba5914bbb813995755e4aacc732fdca0ee53554916c1b8fd352dc'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
