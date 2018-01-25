cask 'anylogic' do
  version '8.2.2'
  sha256 '417c000d7ce36063c5aa5cf4e5dc14f84fe6b79322b708a544d29da3d8667d6e'

  url "http://www.anylogic.com/files/anylogic-ple-#{version}.dmg"
  name 'AnyLogic'
  homepage 'https://www.anylogic.com/'

  depends_on macos: '>= :lion'

  pkg 'Install AnyLogic.pkg'

  uninstall pkgutil: 'com.anylogic.AnyLogic'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.anylogic.anylogic.sfl*',
               '~/Library/Caches/com.anylogic.AnyLogic',
             ]

  caveats do
    depends_on_java('8')

    <<~EOS
      For activation instructions, check up on
        http://www.anylogic.com/upload/activation-guides/AnyLogic_#{version.slice(%r{\w+})}_PLE_License.pdf
    EOS
  end
end
