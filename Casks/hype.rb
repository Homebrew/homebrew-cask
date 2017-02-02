cask 'hype' do
  version '3.5.5'
  sha256 '8a72e1167440364a397b674422082edd19a62d8fc8a5463540c7ea7324611c93'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: '4a3eb7ade6eb6d508225db47c0a9e11b67d70f5310b797453bfe465b331c4bd1'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  app "Hype #{version.major}.app"
end
