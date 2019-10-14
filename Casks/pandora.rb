cask 'pandora' do
  version :latest
  sha256 :no_check

  url "https://pdora.co/desktop_mac_download"
  #pdora.com was verified as official when first introduced to the cask (Pandora Media, Inc)
  name 'Pandora Desktop'
  homepage 'https://www.pandora.com/desktop'

  app 'Pandora.app'

  zap trash: [
    '~/Library/Preferences/com.pandora.desktop.plist'

  ]
end


