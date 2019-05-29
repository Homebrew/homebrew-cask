cask 'haptickey' do
  version '0.4.6'
  sha256 '71d2905f01fe45acb74452f3a92c37bdcb2d0ca605a831fe4f0854fe3d968d04'

  url "https://github.com/niw/HapticKey/releases/download/#{version}/HapticKey.app.zip"
  appcast 'https://github.com/niw/HapticKey/releases.atom'
  name 'HapticKey'
  homepage 'https://github.com/niw/HapticKey'

  depends_on macos: '>= :sierra'

  app 'HapticKey.app'
end
