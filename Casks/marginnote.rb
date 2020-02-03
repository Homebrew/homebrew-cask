cask 'marginnote' do
  version '3.6.2004'
  sha256 'ca5a2060f10e742ba7005b23833e7dc594498b837355c1fa2de72be8178adc3b'

  # appcenter-filemanagement-distrib4ede6f06e.azureedge.net/895929dc-b9be-4b30-8ccd-15383dd786bd was verified as official when first introduced to the cask
  url "https://appcenter-filemanagement-distrib4ede6f06e.azureedge.net/895929dc-b9be-4b30-8ccd-15383dd786bd/MarginNote%20#{version.major}.app.zip?sv=2018-03-28&sr=c&sig=OjCIng7U4P7qM906WE9Ny4xxXdY%2FLbiDNBEDEJ3q4g4%3D&se=2020-01-30T17%3A52%3A08Z&sp=r"
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
