cask 'iueditor' do
  version '1.1.1.6'
  sha256 'f644d8e8a4f0aab420cf76ce724fb8e680e4f592de1bdad54399f938342fa641'

  # iueditor.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://iueditor.s3.amazonaws.com/Release/IUEditorV#{version}.zip"
  name 'JDLab IUEditor'
  homepage 'http://www.iueditor.org'

  app 'IUEditor.app'

  zap delete: [
                '~/Library/Preferences/org.jdlab.IUEditor.LSSharedFileList.plist',
                '~/Library/Preferences/org.jdlab.IUEditor.plist',
              ]
end
