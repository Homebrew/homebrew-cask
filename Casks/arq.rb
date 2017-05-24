cask 'arq' do
  version '5.8.5'
  sha256 '430eb506fdab80cd949b527e9798355acd79c1e89de1c5dae828be5e421af7dc'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '9b0ad0dccb0580e19d23b211847f6109a059861083f7e7ce74bfc3b8a26f7abe'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
