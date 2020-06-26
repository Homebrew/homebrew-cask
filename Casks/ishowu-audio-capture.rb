cask 'ishowu-audio-capture' do
  version '1.0.5'
  sha256 'ed21287187d534554148b6e4331c62a4e6ad2d39dda37e3d9b28de8389d8bd2a'

  url "https://downloads.shinywhitebox.com/driver/iShowUAudioCapture-#{version}.dmg"
  name 'iShowU Audio Capture'
  homepage 'https://www.shinywhitebox.com/ishowu'

  pkg "iShowU Audio Capture-#{version}.pkg"

  uninstall pkgutil: 'com.shinywhitebox.iShowU-Audio-Capture'

  caveats do
    kext
  end
end
