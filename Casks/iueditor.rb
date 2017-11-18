cask 'iueditor' do
  version '2.0.6.13'
  sha256 '4b21e63cda4808b1f29f78fb61f75d9e7c5b9694b9b63bc153fb3fa62a888794'

  url "https://cdn.iueditor.org/release/IUEditorV#{version}.pkg"
  name 'JDLab IUEditor'
  homepage 'https://www.iueditor.org/'

  pkg "IUEditorV#{version}.pkg"

  uninstall pkgutil: 'org.jdlab.IUEditor'

  zap delete: [
                '~/Library/Preferences/org.jdlab.IUEditor.LSSharedFileList.plist',
                '~/Library/Preferences/org.jdlab.IUEditor.plist',
              ]
end
