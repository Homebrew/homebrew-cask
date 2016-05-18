cask 'arq' do
  version '5.0.11'
  sha256 '079a8d98077a2c2da9bd46f7bd71dc02c52dd1e0cd289fdf82444dbaa7f3914c'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '1427c156bca99a4062b440416a9b16c84b2df6cdd923a3c18665b78c30555c92'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
