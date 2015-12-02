cask :v1 => 'gimp' do
  version '2.8.14'
  sha256 'a90fe7001ee4f64d5108cd7b6aad843772aab7f1a7e67018564c620a4374460a'

  url "https://download.gimp.org/pub/gimp/v2.8/osx/gimp-#{version}.dmg"
  name 'GIMP'
  homepage 'https://www.gimp.org'
  license :gpl

  zap :delete => [
    '~/Library/Application Support/GIMP',
    '~/Library/Saved Application State/org.gnome.gimp.savedState'
  ]

  app 'GIMP.app'
end
