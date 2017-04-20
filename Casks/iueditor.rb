cask 'iueditor' do
  version '2.0.5.27'
  sha256 'efec711a7c04f11d4f78df036d60b44d16bb62f36cf617e362bc0f3fb75c591d'

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
