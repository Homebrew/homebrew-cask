cask 'hiddenbar' do
  version '1.5'
  sha256 '66f32bf47788a971ccc409249f0d183265bf979f6a896f08ab173bc47eef15ac'

  url "https://github.com/dwarvesf/hidden/releases/download/v#{version}/Hidden.Bar.#{version}.dmg"
  appcast 'https://github.com/dwarvesf/hidden/releases.atom'
  name 'Hidden Bar'
  homepage 'https://github.com/dwarvesf/hidden/'

  depends_on macos: '>= :high_sierra'

  app 'Hidden Bar.app'

  uninstall quit:      'com.dwarvesv.minimalbar',
            launchctl: 'com.dwarvesv.LauncherApplication'

  zap trash: [
               '~/Library/Application Scripts/com.dwarvesv.LauncherApplication',
               '~/Library/Application Scripts/com.dwarvesv.minimalbar',
               '~/Library/Containers/com.dwarvesv.LauncherApplication',
               '~/Library/Containers/com.dwarvesv.minimalbar',
             ]
end
