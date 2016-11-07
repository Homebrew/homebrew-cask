cask 'anylogic' do
  version '7.3.5'
  sha256 '190bc6555b637c5ecbf40d1f8b8966d097b1bac10e12dc5eaf01a25af75e3971'

  url "http://www.anylogic.com/files/anylogic-ple-#{version}.dmg"
  name 'AnyLogic'
  homepage 'http://www.anylogic.com'

  depends_on arch: :x86_64
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
