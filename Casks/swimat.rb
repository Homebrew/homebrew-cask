cask 'swimat' do
  version '1.1'
  sha256 '18cfa7b7f5aaf39e8ffc8ab0232e4dbdfac9c7efcac00e03e1b6e6b0dd89adbc'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: 'cf5cb1d20241b13ab41cdcb2c7e09bcffc5a4004e714431a9897ac7e77535611'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
