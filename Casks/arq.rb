cask 'arq' do
  version '5.6.2'
  sha256 'dd439a229c711996e85bfb3e5702f214799ebcc61b394f164bdce7328ab42d83'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '2c02bab265aa2212632a13a38d24132cae31e195911a5767c38f61d0ca3da878'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
