cask 'iexplorer' do
  version '4.0.11.0'
  sha256 'b9d222d53cdcc53f0137140d48ab01ff782860c9872397c7462d23f6dbedcb8b'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast "https://www.macroplant.com/iexplorer/ie#{version.major}-appcast.xml",
          checkpoint: '48eaa402b874473b322a88d0af31c3642f1c2588a3337524a95a71c2d5fd564d'
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
