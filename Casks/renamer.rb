cask 'renamer' do
  version '4.4.0'
  sha256 '9a8fa35e77831b81646b2e84a1b80448362aacb41e6e4be797a88933fb746974'

  # creativebe.com is the official download host per the vendor homepage
  url 'http://creativebe.com/download/renamer'
  appcast 'https://storage.googleapis.com/incrediblebee/appcasts/renamer.xml',
          checkpoint: '8b69a9063721e4cd8998e2cfc5701d7c72093b914f6d072c177f1c69c393f412'
  name 'Renamer'
  homepage 'http://renamer.com'
  license :commercial

  app 'Renamer.app'
end
