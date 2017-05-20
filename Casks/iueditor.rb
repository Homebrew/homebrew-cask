cask 'iueditor' do
  version '2.0.5.28'
  sha256 '310fae4a3c3b187de789a69224551506c21a1ffcdc34baa2e3ef3a984d0a5c61'

  url "https://cdn.iueditor.org/release/IUEditorV#{version}.pkg"
  name 'JDLab IUEditor'
  homepage 'http://www.iueditor.org/'

  pkg "IUEditorV#{version}.pkg"

  uninstall pkgutil: 'org.jdlab.IUEditor'

  zap delete: [
                '~/Library/Preferences/org.jdlab.IUEditor.LSSharedFileList.plist',
                '~/Library/Preferences/org.jdlab.IUEditor.plist',
              ]
end
