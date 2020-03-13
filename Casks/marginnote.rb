cask 'marginnote' do
  version '3.6.5006'
  sha256 '1d2875d19c9f93a56ee8bfa57f2204e2137e6f31ffdabe82f94398d2c0606e37'

  # appcenter-filemanagement-distrib3ede6f06e.azureedge.net/ was verified as official when first introduced to the cask
  url "https://appcenter-filemanagement-distrib3ede6f06e.azureedge.net/9a587020-3de9-4f89-a1e0-7b0786d9a7ad/MarginNote%20#{version.major}.app.zip?sv=2018-03-28&sr=c&sig=R9dlmrbLqaUYkDCRu4TNYWl5viWiyue1lM6AWBbGqcg%3D&se=2020-03-14T11%3A27%3A28Z&sp=r"
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
