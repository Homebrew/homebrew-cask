cask 'swimat' do
  version '1.4.0'
  sha256 'd413943c2dc80281f6839ba77a0751c165e930542861c0787e9e6680ee0acbc0'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: '28c55a1bbd012267ec621d911daf55288a6cce7ca6dcbb74371879ec2bb7dbd0'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
