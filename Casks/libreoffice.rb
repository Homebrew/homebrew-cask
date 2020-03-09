cask 'libreoffice' do
  version '6.4.1'
  sha256 'f1c9ed7df518430bfc803e26854c7e788c2f46996e7fdc345cf1a19dca191ac8'

  # documentfoundation.org was verified as official when first introduced to the cask
  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/stable/'
  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'

  conflicts_with cask: 'libreoffice-still'

  app 'LibreOffice.app'
  binary 'LibreOffice.app/Contents/MacOS/gengal'
  binary 'LibreOffice.app/Contents/MacOS/regmerge'
  binary 'LibreOffice.app/Contents/MacOS/regview'
  binary 'LibreOffice.app/Contents/MacOS/senddoc'
  binary 'LibreOffice.app/Contents/MacOS/ui-previewer'
  binary 'LibreOffice.app/Contents/MacOS/uno'
  binary 'LibreOffice.app/Contents/MacOS/unoinfo'
  binary 'LibreOffice.app/Contents/MacOS/unopkg'
  binary 'LibreOffice.app/Contents/MacOS/uri-encode'
  binary 'LibreOffice.app/Contents/MacOS/xpdfimport'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: 'soffice'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/LibreOffice.app/Contents/MacOS/soffice' "$@"
    EOS
  end

  zap trash: [
               '~/Library/Application Support/LibreOffice',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl*',
               '~/Library/Preferences/org.libreoffice.script.plist',
               '~/Library/Saved Application State/org.libreoffice.script.savedState',
             ]
end
