cask 'qlab' do
  version '3.2.4'
  sha256 '561904e8fcf56b035100a5a46a3abb6f717d0395f64acf8ce0e56cb87f57da38'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}.php",
          checkpoint: '273773f4ab30e6148fccde6cf6bf87b68b59bfed2e9cafef4d1b8f5ec93ebf89'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  app 'QLab.app'
end
