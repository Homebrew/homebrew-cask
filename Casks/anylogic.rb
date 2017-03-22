cask 'anylogic' do
  version '7.3.6'
  sha256 '798a4002ed8eed2f307896977112a6a54e58dd45615f3523eee190fc1f8aa72b'

  url "http://www.anylogic.com/files/anylogic-ple-#{version}.dmg"
  name 'AnyLogic'
  homepage 'https://www.anylogic.com/'

  depends_on macos: '>= :lion'

  pkg 'Install AnyLogic.pkg'

  uninstall pkgutil: 'com.anylogic.AnyLogic'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.anylogic.anylogic.sfl',
                '~/Library/Caches/com.anylogic.AnyLogic',
              ]

  caveats do
    depends_on_java('8')

    <<-EOS.undent
      For activation instructions, check up on
        http://www.anylogic.com/upload/activation-guides/AnyLogic_#{version.slice(%r{\w+})}_PLE_License.pdf
    EOS
  end
end
