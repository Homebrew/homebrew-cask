cask 'gray' do
  version '0.7.0'
  sha256 'aed93e4b79b4c5d4960e32596b04ac76f2e41a67b4987d5c24b44090907ed094'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  app 'Gray.app'
end
