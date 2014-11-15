cask :v1 => 'sqleditor' do
  version '2.7'
  sha256 '38f9d93d0ff7d680eff64949601ee4693eb91c38f89bd2f42a7e86809b36e9b5'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-2-7.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          :sha256 => '927ddc279f600c4716b68fe0fc568c879ba4fb10a4a9cc19b535767994d00f65'
  homepage 'http://www.malcolmhardie.com/sqleditor/'
  license :unknown

  app 'SQLEditor.app'
end
