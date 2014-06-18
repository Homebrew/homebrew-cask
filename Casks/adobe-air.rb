class AdobeAir < Cask
  version '14.0'
  sha256 '73b7632958145bbd6f6312ad53611491220b30dac4123817b476872c8ba2d40e'

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
