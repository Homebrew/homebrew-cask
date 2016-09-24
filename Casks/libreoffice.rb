cask 'libreoffice' do
  if Hardware::CPU.is_32_bit? || MacOS.version < :mountain_lion
    version '4.3.7.2'
    sha256 '2964a952ab633426df402de2f128cf788354ac622b7c30b25209d185d17617ec'
    # documentfoundation.org was verified as official when first introduced to the cask
    url "https://downloadarchive.documentfoundation.org/libreoffice/old/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  else
    version '5.2.1'
    sha256 '6e968525f849ac93572926118c3ac1b79abd3d0ee18ec870cb45abea34077503'
    # documentfoundation.org was verified as official when first introduced to the cask
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
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/ui-previewer"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uno"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unopkg"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/urelibs"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uri-encode"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/xpdfimport"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: 'soffice'

  preflight do
    IO.write shimscript, <<-EOS.undent
      #!/bin/sh
      '#{appdir}/LibreOffice.app/Contents/MacOS/soffice' "$@"
    EOS
    FileUtils.chmod '+x', shimscript
  end

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl',
                '~/Library/Application Support/LibreOffice',
              ]
end
