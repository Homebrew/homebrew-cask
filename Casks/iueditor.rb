cask 'iueditor' do
  version '2.0.5.13'
  sha256 'b50a135f48d286e6fb7ec79c534155e524c18663803a88b04ae642f95d7df162'

  url "http://cdn.iueditor.org/release/IUEditorV#{version}.pkg"
  name 'JDLab IUEditor'
  homepage 'http://www.iueditor.org/'

  pkg "IUEditorV#{version}.pkg"

  uninstall delete:  '/Applications/IUEditor.app',
            pkgutil: 'org.jdlab.IUEditor'

  zap delete: [
                '~/Library/Preferences/org.jdlab.IUEditor.LSSharedFileList.plist',
                '~/Library/Preferences/org.jdlab.IUEditor.plist',
              ]
end
