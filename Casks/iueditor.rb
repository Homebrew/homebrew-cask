cask 'iueditor' do
  version '2.0.5.6'
  sha256 'd4a4775c0c32b62645887d1afe9072cd04e9190731a7e2fcbf5e9be3212d2724'

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
