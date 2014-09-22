class AdobeAir < Cask
  version '15.0'
  sha256 '07f7ae83b9d9005c830ce7592d651c378e235a20f62da692410035a703af20c7'

  url "http://airdownload.adobe.com/air/mac/download/#{version}/AdobeAIR.dmg"
  homepage 'https://get.adobe.com/air/'

  caskroom_only true

  postflight do
    system '/usr/bin/sudo', '-E', '--',
      "#{destination_path}/Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer", '-silent'
  end

  uninstall :script => {
    :executable => 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
    :args => %w[-uninstall]
  }
end
