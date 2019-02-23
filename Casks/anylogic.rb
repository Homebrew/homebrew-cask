cask 'anylogic' do
  version '8.3.3'
  sha256 'b4c6e54912cef5882bb7a194fe166c61bb1259fa2bf5cb4d827300a0a7df0296'

  url "https://www.anylogic.com/files/anylogic-ple-#{version}.dmg"
  appcast 'https://www.anylogic.com/files/changes-history.txt'
  name 'AnyLogic'
  homepage 'https://www.anylogic.com/'

  pkg 'Install AnyLogic.pkg'

  uninstall pkgutil: 'com.anylogic.AnyLogic'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.anylogic.anylogic.sfl*',
               '~/Library/Caches/com.anylogic.AnyLogic',
             ]

  caveats do
    depends_on_java '8'

    <<~EOS
      For activation instructions, check up on
        http://www.anylogic.com/upload/activation-guides/AnyLogic_#{version.slice(%r{\w+})}_PLE_License.pdf
    EOS
  end
end
