cask 'freeze' do
  version '2.8-235'
  sha256 'a7e0823f2698a3a2547d8a0958458da9de443e38df2079fbde1e6c641c29e289'

  url "https://www.freezeapp.net/download/Freeze-#{version}.zip"
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: 'cbbe7f0a9ad40f27c60f8fab8806154cefebb18a56e0688e5c74aa7d346f3311'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'
end
