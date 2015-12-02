cask :v1 => 'sqleditor' do
  version '2.9.12'
  sha256 'b0243086f656ceea8f7fe4183d719f77feadaffefcd26790aee6f1a670836a23'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.','-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          :sha256 => '49760ed404c3e86a14ce1498a23b3144bb44fb672ef411070d00fce86be263d5'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
