cask 'libreoffice' do
  if Hardware::CPU.is_32_bit? || MacOS.release < :mountain_lion
    version '4.3.7.2'
    sha256 '2964a952ab633426df402de2f128cf788354ac622b7c30b25209d185d17617ec'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://downloadarchive.documentfoundation.org/libreoffice/old/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  else
    version '5.1.3'
    sha256 '969597335139d626a2fff98089fd3e2d4d7bd8ddd6753b355ec7a9d8889f4b5b'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  end
  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOffice.app'
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/gengal"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regmerge"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regview"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/senddoc"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/soffice"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/ui-previewer"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uno"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unoinfo"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unopkg"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/urelibs"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uri-encode"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/xpdfimport"

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl',
                '~/Library/Application Support/LibreOffice',
              ]
end
