cask 'qlab' do
  version '4.2.3'
  sha256 '808602de584d34dfba5c06006f5d460cce201a0650425f17a80a6f286b0fb4cd'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/",
          checkpoint: '76150ace3f0035c0e8b10b03405666debca49715b5c4ed207809cc62f7cb6875'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
