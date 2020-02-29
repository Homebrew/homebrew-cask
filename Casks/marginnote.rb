cask 'marginnote' do
  version '3.6.3002'
  sha256 'c800fb301172d050b92810500757444b6712cc6968ce86a733554938e335ef82'

  # appcenter-filemanagement-distrib4ede6f06e.azureedge.net/ was verified as official when first introduced to the cask
  url "https://appcenter-filemanagement-distrib4ede6f06e.azureedge.net/e817e853-6a6f-413c-b5cf-001dcc236caa/MarginNote#{version.major}.dmg?sv=2018-03-28&sr=c&sig=Cjah0NylL6vVfJBoJZkkLBy82DO78kwjh%2FclWqRDBEI%3D&se=2020-02-08T15%3A05%3A13Z&sp=r"
  appcast 'https://api.appcenter.ms/v0.1/public/sparkle/apps/1451f4f6-9214-4d46-b91c-d5898c7e42cb'
  name 'MarginNote'
  homepage 'https://www.marginnote.com/'

  auto_updates true

  app "MarginNote #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/QReader.MarginStudyMac',
               '~/Library/Containers/QReader.MarginStudyMac',
             ]
end
