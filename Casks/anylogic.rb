cask 'anylogic' do
  version '8.4.0'
  sha256 'f34271ae1c704bd083a683547ef4467de3aec4fa62b630e233c790ea11f5cff3'

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
