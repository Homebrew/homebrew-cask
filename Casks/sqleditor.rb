cask 'sqleditor' do
  version '3.3.9'
  sha256 'a004e7cdfcae821aae03f9b07405a03e9f91bf3404aefcbf2735db4ec6487e6f'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: '166cfc181a1897dd75bdcb161c09da427a24bee27df71285ff471d06f3dc52bd'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
