cask 'duplicacy' do
  version '2.1.1'
  sha256 'fe3b1dce02e54b662c24cbc67696fe25194b15d4a6785f92df5fc269a92ab206'

  # acrosync.com/duplicacy was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy/duplicacy_gui_osx_#{version}.dmg"
  name 'Duplicacy'
  homepage 'https://duplicacy.com/'

  app 'Duplicacy.app'
  binary "#{appdir}/Duplicacy.app/Contents/Resources/duplicacy_osx_x64_#{version}", target: 'duplicacy'
end
