cask 'sqleditor' do
  version '3.1.7'
  sha256 '73af97b41de22ee7911091f193ae20330e9ae436a46260c918608fefe8882e2f'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: 'fb3c86905c2cd40431e9ccd144e2b64505a2ee2c047c499bed1bc09d29272a40'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
