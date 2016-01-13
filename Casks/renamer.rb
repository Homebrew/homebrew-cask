cask 'renamer' do
  version :latest
  sha256 :no_check

  # creativebe.com is the official download host per the vendor homepage
  url 'http://creativebe.com/download/renamer'
  appcast 'https://storage.googleapis.com/incrediblebee/appcasts/renamer.xml',
          :checkpoint => '8ead1b19284788f06b87e6f926228ca06354692766662acbeaaf4d1aa82692d4'
  name 'Renamer'
  homepage 'http://renamer.com'
  license :commercial

  app 'Renamer.app'
end
