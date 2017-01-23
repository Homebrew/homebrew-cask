cask 'arq' do
  version '5.7'
  sha256 '1cdd383ec198e41e54d1c16987a919428739beff845e7004c551188b6c5a74df'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '04c87d9fc48f69006088ecbddadeb11ddf719c4817d935a8d73d070dfd1e0d9f'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
