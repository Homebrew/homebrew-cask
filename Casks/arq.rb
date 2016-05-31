cask 'arq' do
  version '5.1.2.3'
  sha256 '69c56061815fa38682bdccc5d88f54441eecdb1a5fa3dc028b6f4bf8aebee97f'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '64745bf96000ce7bd792a195135cf6e4c3b1b7fe2e3afd645bd316f93a919bf9'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
