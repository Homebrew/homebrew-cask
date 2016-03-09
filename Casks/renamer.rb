cask 'renamer' do
  version '4.4.1'
  sha256 'cc2e4ab9c2074311c8e6cb10662f7e7d2d95f9a8d1bfcd5dc712ab4cc81b782a'

  # creativebe.com is the official download host per the vendor homepage
  url 'http://creativebe.com/download/renamer'
  appcast 'https://storage.googleapis.com/incrediblebee/appcasts/renamer.xml',
          checkpoint: '1bfd4de2d52080574682e11a22060fbfd7cccfb978e48ab1b996133629cfd500'
  name 'Renamer'
  homepage 'http://renamer.com'
  license :commercial

  app 'Renamer.app'
end
