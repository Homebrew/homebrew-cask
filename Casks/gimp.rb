cask 'gimp' do
  version '2.8.20-x86_64'
  sha256 'c15f9b86a74af150f257aa3909a166bf643caa17dde48d9e6ebaeff7b58115a2'

  url "https://download.gimp.org/pub/gimp/v2.8/osx/gimp-#{version}.dmg"
  name 'GIMP'
  homepage 'https://www.gimp.org/'

  app 'GIMP.app'

  postflight do
    set_permissions "#{appdir}/GIMP.app/Contents/MacOS/GIMP", 'a+rx'
  end

  zap delete: [
                '~/Library/Application Support/GIMP',
                '~/Library/Saved Application State/org.gnome.gimp.savedState',
              ]
end
