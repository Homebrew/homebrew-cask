cask 'onyx' do
  macos_release = MacOS.version.to_s.delete('.')

  if MacOS.version == :snow_leopard
    version '2.4.0'
    sha256 '188c15090988b379dce9f0fafa7b686c6eff2ada147cde150b16e1ae01e4e9e4'
  elsif MacOS.version == :lion
    version '2.4.8'
    sha256 'e637359020d3514cf1fe40d1f616692919c41aed926a395bbc7093b256e42e35'
  elsif MacOS.version == :mountain_lion
    version '2.7.4'
    sha256 'e025125b06fc78322347f8549871c67e570131af83e8bb18b62ed43b65d7369d'
  elsif MacOS.version == :mavericks
    version '2.8.9'
    sha256 '01fe01a4e2acdc55383fbe12eea9e2c32659cf1fc283f021987a356bdf820a58'
  elsif MacOS.version == :yosemite
    version '3.0.2'
    sha256 '9672a1b300501ec7c726508561c885f2b5e82069ef65145796dc40b0d386a8b0'
  elsif MacOS.version == :el_capitan
    version '3.1.9'
    sha256 '7f8df2c9e97eb465aba88b000fa2f58958421efeba1239303ff0071e9b7b0536'
  elsif MacOS.version == :sierra
    version '3.3.1'
    sha256 '887272335926005f49bbd35f66eb3ea5a6c19d3a35a8fada68357ab5860a7c1b'
  elsif MacOS.version == :high_sierra
    version '3.4.9'
    sha256 '60e4f56fb2e5457aca1aa1d2a9be95502a310b0de75112e91b7c89bf4a2be829'
  else
    version '3.5.2'
    sha256 'e2e9d36ee8243ecef7c77d6d11dcdc55777e3f8472f3e4eda5122c1e80c4efcb'
  end

  url "https://www.titanium-software.fr/download/#{macos_release}/OnyX.dmg"
  appcast 'https://www.titanium-software.fr/en/release_onyx.html'
  name 'OnyX'
  homepage 'https://www.titanium-software.fr/en/onyx.html'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :snow_leopard,
                      :lion,
                      :mountain_lion,
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                      :mojave,
                    ]

  app 'OnyX.app'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help*',
               '~/Library/Logs/OnyX.log',
               '~/Library/Preferences/OnyX.plist',
               '~/Library/Preferences/com.titanium.OnyX.plist',
               '~/Library/Saved Application State/com.titanium.OnyX.savedState',
             ]
end
