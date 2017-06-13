cask 'iueditor' do
  version '2.0.6.1'
  sha256 'd03c18a5caa32af1e732ef5ac951f1bc9cc50952da9fa64fafc44341bd04e2ea'

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
