cask 'rescuetime' do
  version :latest
  sha256 :no_check

  url 'https://www.rescuetime.com/installers/RescueTimeInstaller.pkg'
  name 'RescueTime'
  homepage 'https://www.rescuetime.com/'

  pkg 'RescueTimeInstaller.pkg'

  uninstall pkgutil: 'com.rescuetime.RescueTime'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*'
end
