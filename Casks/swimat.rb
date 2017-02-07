cask 'swimat' do
  version '1.2.1'
  sha256 'a75834c233a0a048bcc920d91ae9057da0a2f4665f7b5fe1dd3c0982a82a5ef9'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: '7948c642075dd42578f905bbe9bbef82879ab74840e52ed12ec7564793bac88e'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
