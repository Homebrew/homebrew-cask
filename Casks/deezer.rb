cask 'deezer' do
  version '1.2.3,4312'
  sha256 '33d355be84ef0c7777cab8c202476b61487ae6a12bf5e5aa8d852d14c05a6522'

  url "http://e-cdn-content.deezer.com/builds/mac/Deezer_#{version.after_comma}.dmg"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
