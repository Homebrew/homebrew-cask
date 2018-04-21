cask 'sqleditor' do
  version '3.3.4'
  sha256 '5dea107f64a22c9e15e1121f5310d02fca33ac077b42d521df3b73df6115f22f'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '0ba4d10c2fdded789dcdfa47870bc569f7e83ac4bf8e4bfa4a0bb26bbb730d39'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
