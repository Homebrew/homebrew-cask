cask 'duplicacy' do
  version '2.1.1'
  sha256 '9236a1b12884ba2537662f662f44c64ab9e73894d832b3ef24b300ca3b73de39'

  # acrosync.com/duplicacy was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy/duplicacy_gui_osx_#{version}.dmg"
  name 'Duplicacy'
  homepage 'https://duplicacy.com/'

  app 'Duplicacy.app'
  binary "#{appdir}/Duplicacy.app/Contents/Resources/duplicacy_osx_x64_#{version}", target: 'duplicacy'
end
