cask :v1 => 'sqleditor' do
  version '2.9.8'
  sha256 '61cdd782ac782cd4741c6bb179ea625ad50b607ae534308155e04b63f7236c60'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.','-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          :sha256 => 'c213dbddb9627f7ccc7876793f6bd0b383f3b499c340cfc9f66aec0bd495ffc4'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
