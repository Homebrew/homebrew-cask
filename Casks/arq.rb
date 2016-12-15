cask 'arq' do
  version '5.6.1'
  sha256 '5eb9aed9abd6e9ed074761c347e9b2b966683bca2b793dd6eb068ed4f11f16e7'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'a19d0e330a7777261d066e85b666ffd3af7b92cbf9d8278701c8c92f92b69cde'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
