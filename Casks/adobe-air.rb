class AdobeAir < Cask
  version '14.0'
  sha256 'af16b6ea395efb9f9f01e15f7378fba097322e0506d2f5d48412d28a6f71b039'

  url "http://airdownload.adobe.com/air/mac/download/#{version}/AdobeAIR.dmg"
  homepage 'https://get.adobe.com/air/'

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
