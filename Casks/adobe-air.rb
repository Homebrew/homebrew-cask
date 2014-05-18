class AdobeAir < Cask
  url 'http://airdownload.adobe.com/air/mac/download/13.0/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '13.0'
  sha256 '7bd3a4dc193542e6421d46f1c7dcac425b1eb42512f9bf5d7b7a1755dbaf7419'
  caskroom_only true

  after_install do
    system '/usr/bin/sudo', '-E', '--',
      "#{destination_path}/Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer", '-silent'
  end

  uninstall :script => {
    :executable => 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
    :args => %w[-uninstall]
  }
end
