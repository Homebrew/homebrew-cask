cask 'choosy' do
  if MacOS.version <= :el_capitan
    version '1.1'
    sha256 'c6530d4e0dddbf47c6a8999bda8f3a5ef1857f4481b9325e56cfe00f05b2022c'

    prefpane 'Choosy.prefPane'
  elsif MacOS.version <= :high_sierra
    version '1.3'
    sha256 'cb1f40df11ac1b52354f4b81367462d2646a6d023c64bafe5022fcec52f796cd'

    prefpane 'Choosy.prefPane'
  else
    version '2.0'
    sha256 'dcba0b48d742da6c6860858c81480ff8b08b7cdbaae10a348c3062afddc1cc73'

    pkg 'Choosy.pkg'
  end

  url "https://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'https://www.choosyosx.com/sparkle/feed'
  name 'Choosy'
  homepage 'https://www.choosyosx.com/#'

  depends_on macos: '>= :yosemite'

  uninstall pkgutil: 'com.choosyosx.Choosy',
            quit:    'com.choosyosx.Choosy'

  zap trash: [
               '~/Library/Application Support/Choosy',
               '~/Library/Preferences/com.choosyosx.ChoosyPrefPane.plist',
             ]
end
