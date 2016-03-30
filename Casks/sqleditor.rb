cask 'sqleditor' do
  version '2.9.17'
  sha256 'ee22920f9a36c5dac49134a3bd0bff3ae8d8c53cc2bfb099ccf78fc56c63a8c8'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.', '-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '474fb710635724c9192db97f89408a155bdeddb8e311ca5d7ee89f622fa6a528'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
