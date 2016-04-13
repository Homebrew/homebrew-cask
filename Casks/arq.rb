cask 'arq' do
  version '5.0.0.65'
  sha256 '9c37e55972bce74e2f4e01046bd98fbb19b70ce748cdf825c7e4e556879cb750'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'c8404b6c022aae522edac6cdeec521cdb1270409ee9d5b8eb94b77d6a765868e'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
