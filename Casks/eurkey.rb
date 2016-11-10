cask 'eurkey' do
  version '1.1'
  sha256 'ef965dcb405378fb78cff8b89e69190d15b0e699ae773056e6c2cb9c66b9511d'

  # github.com/jonasdiemer/EurKEY-Mac was verified as official when first introduced to the cask
  url 'https://github.com/jonasdiemer/EurKEY-Mac/archive/master.zip'
  name 'EurKEY keyboard layout'
  homepage 'http://eurkey.steffen.bruentjen.eu'

  artifact 'EurKEY-Mac-master/EurKEY.icns', target: "#{ENV['HOME']}/Library/Keyboard Layouts/EurKEY.icns"
  artifact 'EurKEY-Mac-master/EurKEY.keylayout', target: "#{ENV['HOME']}/Library/Keyboard Layouts/EurKEY.keylayout"
end
