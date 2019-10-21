cask 'choosy' do
  if MacOS.version <= :el_capitan
    version '1.1'
    sha256 'c6530d4e0dddbf47c6a8999bda8f3a5ef1857f4481b9325e56cfe00f05b2022c'
  else
    version '2.0'
    sha256 'dcba0b48d742da6c6860858c81480ff8b08b7cdbaae10a348c3062afddc1cc73'
  end

  url "https://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'https://www.choosyosx.com/sparkle/feed'
  name 'Choosy'
  homepage 'https://www.choosyosx.com/'

  depends_on macos: '>= :yosemite'

  prefpane 'Choosy.prefPane'

  zap trash: [
               '~/Library/Application Support/Choosy',
               '~/Library/Preferences/com.choosyosx.ChoosyPrefPane.plist',
             ]
end
