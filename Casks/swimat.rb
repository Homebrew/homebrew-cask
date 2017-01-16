cask 'swimat' do
  version '1.1'
  sha256 'c80351be071fbafa0f622d3a66597e996b12f22d0afa831c0b5bfc0fcfb38b83'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: 'cf5cb1d20241b13ab41cdcb2c7e09bcffc5a4004e714431a9897ac7e77535611'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
