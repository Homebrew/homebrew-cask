cask :v1 => 'sqleditor' do
  version '2.9.11'
  sha256 '9741a3b6a24e3c75220926b369462513af84f7a048eb53e3d3a061a9c5006a32'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.','-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          :sha256 => 'fae525c20b0d8984375345ad41c7ebc272555462ab5375ba4e9928556e765712'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
