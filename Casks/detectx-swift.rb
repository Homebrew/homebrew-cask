cask 'detectx-swift' do
  version '1.085'
  sha256 'abfe5db40f3fccaa416dca9538fd03beff8283096ad538a4f4663db7b3c86fbc'

  # amazonaws.com/sqwarq.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/DetectX_Swift.dmg'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/dtxswift.xml'
  name 'DetectX Swift'
  homepage 'https://sqwarq.com/detectx/'

  auto_updates true
  conflicts_with cask: 'detectx'
  depends_on macos: '>= :el_capitan'

  app 'DetectX Swift.app'

  if MacOS.version <= :mojave
    # https://sqwarq.com/2018/12/03/how-to-add-detectx-to-full-disk-access/
    caveats <<~EOS
      On macOS 10.14 Mojave, DetectX Swift requires Full Disk Access in order to fully protect your Mac.
       Without this access, some areas where adware and malware can hide may be hidden from DetectX’s search and profile functions.
       Therefore, we recommend that you add DetectX Swift to the Full Disk Access pane in System Preferences’ Security & Privacy tab.
       1. Open System Preferences.app (you can search for it in Spotlight or the Finder).
      2. Select the Privacy tab, and then select Full Disk Access in the sidebar.
      3. Click the padlock in the bottom left corner and enter an Admin password to unlock it.
      4. Drag the DetectX Swift icon from your Applications folder and drop it onto the list view in System Preferences.
      5. Click the padlock once more to prevent further changes.
    EOS
  end

  zap trash: [
               '~/Library/Application Support/DetectX Swift',
               '~/Library/Application Support/com.sqwarq.DetectX-Swift',
               '~/Library/Caches/com.sqwarq.DetectX-Swift',
               '~/Library/LaunchAgents/com.sqwarq.DetectX-Swift.observer.plist',
               '~/Library/Preferences/com.sqwarq.DetectX-Swift.plist',
             ]
end
