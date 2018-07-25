cask 'haptickey' do
  version '0.4.4'
  sha256 'f1f46a1686d8f9a2884e0f045acb407d6ad583053ec46b733bce71328240ff29'

  url "https://github.com/niw/HapticKey/releases/download/#{version}/HapticKey.app.zip"
  appcast 'https://github.com/niw/HapticKey/releases.atom'
  name 'HapticKey'
  homepage 'https://github.com/niw/HapticKey'

  app 'HapticKey.app'
end
