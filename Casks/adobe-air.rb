class AdobeAir < Cask
  url 'http://airdownload.adobe.com/air/mac/download/13.0/AdobeAIR.dmg'
  homepage 'https://get.adobe.com/air/'
  version '13.0'
  sha256 '5ff0503cc2861ce365e01c5932f5085bf2abf9cd600f37bd06a6332660ad2042'
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
