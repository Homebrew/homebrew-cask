cask 'arq' do
  version '5.5.2'
  sha256 '479f8caf041003306d31821c1edacbb502b001fbb3deebe860857d47ac6fbd62'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'f1658a2fb8384ea506350c63188bb6926587a2b079698e0cf95216137ef217cf'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
