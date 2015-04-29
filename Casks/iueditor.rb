cask :v1 => 'iueditor' do
  version '0.8.4_11'
  sha256 'c432e6f542e54ee6d27744aade83d30be357c260e84b2f0d1a4e034f6de044a8'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/JDLabOrg/IUEditor/releases/download/v#{version.split('_')[0]}/IUEditorV#{version}.zip"
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
