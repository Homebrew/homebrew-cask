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
    version '3.3.0'
    sha256 'd8f521bd348044fc2d1696f43910bfb193a9641968013cd5bbaada55e46e4799'
  else
    version '3.3.5'
    sha256 '07a61c661c4553bce9ecf98b741e711c64f1ac12eac4452b832e1f1e6bf21dee'
  end

  url "https://www.titanium-software.fr/download/#{macos_release}/OnyX.dmg"
  appcast 'http://www.titanium-software.fr/en/release_onyx.html',
          checkpoint: '7f954ebd126e9109ca9c362f3f8ef370cbceaa29c5c331dff7a5f15f552a3e98'
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
                    ]

  app 'OnyX.app'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help',
                '~/Library/Logs/OnyX.log',
                '~/Library/Saved Application State/com.titanium.OnyX.savedState',
              ],
      trash:  [
                '~/Library/Preferences/OnyX.plist',
                '~/Library/Preferences/com.titanium.OnyX.plist',
              ]
end
