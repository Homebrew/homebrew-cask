cask 'anylogic' do
  version '8.0.5'
  sha256 'c982048534c3b6bcd99ed5f12a81e570ed133d9acffa22852127d515f9027bff'

  url "http://www.anylogic.com/files/anylogic-ple-#{version}.dmg"
  name 'AnyLogic'
  homepage 'https://www.anylogic.com/'

  depends_on macos: '>= :lion'

  pkg 'Install AnyLogic.pkg'

  uninstall pkgutil: 'com.anylogic.AnyLogic'

  zap delete: [
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
