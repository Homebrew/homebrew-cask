cask 'slender' do
  version '2.2.2'
  sha256 '7d3486efb8d6b4cdce8179b423616642238081e510292d215a9c78210913afb5'

  url "http://downloads.dragonforged.com/slender#{version.delete('.')}.zip"
  appcast 'http://dragonforged.com/slender/sparkle/?bundleId=com.dfsw.Slender',
          :sha256 => 'cb3da43b49eead1d877331699ba0eeb88581b04821967881d0f686b09ada8e81'
  name 'Slender'
  homepage 'http://dragonforged.com/slender/'
  license :commercial

  app 'Slender.app'
end
