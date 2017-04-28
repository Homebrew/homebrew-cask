cask 'arq' do
  version '5.8.1'
  sha256 'fd694987fd89faba716aafa3f614381d4646d57e086a10abe610a2e42b707eae'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'b0e3c88e9f9a3def84679ff17dc33b757ad0b1918a62cd8f2eda79a9c87398d8'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
