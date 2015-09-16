cask :v1 => 'iueditor' do
  version '1.0.1.4'
  sha256 '80f1dbb5b959789e4fc809057ec173ffd2377357ce38cf858ca355a6845b3437'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://iueditor.s3.amazonaws.com/Release/IUEditorV#{version}.zip"
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
