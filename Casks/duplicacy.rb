cask 'duplicacy' do
  version '2.1.0'
  sha256 'eb7ef9d82c923293efc6ad000ec821b4564b464766224a86a13cce8aaf550e24'

  # acrosync.com/duplicacy was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy/duplicacy_gui_osx_#{version}.dmg"
  name 'Duplicacy'
  homepage 'https://duplicacy.com/'

  app 'Duplicacy.app'
  binary "#{appdir}/Duplicacy.app/Contents/Resources/duplicacy_osx_x64_#{version}", target: 'duplicacy'
end
