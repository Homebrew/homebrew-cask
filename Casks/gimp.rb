cask 'gimp' do
  version '2.8.16-x86_64'
  sha256 'bd84e6e6af21ee76c664654dc47344655086d0587de807418517dd1ec57b1e09'

  url "https://download.gimp.org/pub/gimp/v2.8/osx/gimp-#{version}.dmg"
  name 'GIMP'
  homepage 'https://www.gimp.org'
  license :gpl

  app 'GIMP.app'

  zap delete: [
                '~/Library/Application Support/GIMP',
                '~/Library/Saved Application State/org.gnome.gimp.savedState',
              ]
end
