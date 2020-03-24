cask 'marginnote' do
  version '3.6.5009'
  sha256 '0abef6e06bd748c59f94d923e73ec4c80de1bfd8079fbe246a621b8bec40fe45'

  # appcenter-filemanagement-distrib5ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url "https://appcenter-filemanagement-distrib5ede6f06e.azureedge.net/b3c43b70-c745-40dd-b49d-059ed39ca468/MarginNote%20#{version.major}.app.zip?sv=2018-03-28&sr=c&sig=V48Kf1C9MpCHO6MKvc7%2F4%2B3UnhxSLnq21J%2FzXVzPqAg%3D&se=2020-03-25T12%3A20%3A27Z&sp=r"
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
