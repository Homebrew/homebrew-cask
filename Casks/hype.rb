cask 'hype' do
  version '3.5.5'
  sha256 '8a72e1167440364a397b674422082edd19a62d8fc8a5463540c7ea7324611c93'

  url 'http://tumult.com/hype/download/Hype.zip'
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: '70c9c28c098620f2ccacf676e1039c2ae4a52c55ff196b1e2151933951ede63e'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  app "Hype #{version.major}.app"
end
