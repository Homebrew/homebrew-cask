cask 'iexplorer' do
  version '4.0.11'
  sha256 'b9d222d53cdcc53f0137140d48ab01ff782860c9872397c7462d23f6dbedcb8b'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast.xml",
          checkpoint: '3088283e134ded801787373c3457f07a6ead123063150eba43f1358a0bf54d94'
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
