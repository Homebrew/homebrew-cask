cask 'duplicacy' do
  version '2.1.1'
  sha256 '823d9264658e76d559a2ea8234947439ace0b706d77aa162258e1d64bea6b803'

  # acrosync.com/duplicacy was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy/duplicacy_gui_osx_#{version}.dmg"
  name 'Duplicacy'
  homepage 'https://duplicacy.com/'

  app 'Duplicacy.app'
  binary "#{appdir}/Duplicacy.app/Contents/Resources/duplicacy_osx_x64_#{version}", target: 'duplicacy'
end
