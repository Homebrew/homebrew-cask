cask :v1 => 'iueditor' do
  version '1.1.0.16'
  sha256 '0e904d4ae187d785cd33b0ff9a07aa810ee4ae5ff48dc36b61bef31c87ca7e5c'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://iueditor.s3.amazonaws.com/Release/IUEditorV#{version}.zip"
  name 'IUEditor'
  homepage 'http://www.iueditor.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'JDLab'

  app 'IUEditor.app'

  zap :delete => [
                  '~/Library/Preferences/org.jdlab.IUEditor.LSSharedFileList.plist',
                  '~/Library/Preferences/org.jdlab.IUEditor.plist',
                 ]
end
