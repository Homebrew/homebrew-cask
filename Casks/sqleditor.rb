cask 'sqleditor' do
  version '2.9.14'
  sha256 '2fdb82fe55370ce8aa027c6ab0ef53c7dc592e51e15b44a3832c512961d92c86'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.', '-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '1e560ce99e076c0364fcb587c546d36ae6c4163b1c2fa8590d6fecb346a44dc8'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
