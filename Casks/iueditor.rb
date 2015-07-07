cask :v1 => 'iueditor' do
  version :latest
  sha256 :no_check

  url 'http://www.iueditor.org/download/IUEditor-latest.zip'
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
