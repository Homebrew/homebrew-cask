cask 'sublime-merge' do
  version '1.058'
  sha256 'cbf39134a8b2578033a45eb7c282c0325cc1b411a69fcc82c5f92beb64b5a7f2'

  # download.sublimetext.com was verified as official when first introduced to the cask
  url "https://download.sublimetext.com/sublime_merge_build_#{version.no_dots}_mac.zip"
  name 'Sublime Merge'
  homepage 'https://www.sublimemerge.com/'

  auto_updates true

  app 'Sublime Merge.app'
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"

  uninstall quit: 'com.sublimemerge'

  zap trash: [
               '~/Library/Application Support/Sublime Merge',
               '~/Library/Caches/com.sublimemerge',
               '~/Library/Saved Application State/com.sublimemerge.savedState',
             ]
end
