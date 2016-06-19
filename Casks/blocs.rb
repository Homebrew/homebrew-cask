cask 'blocs' do
  version '2.0.8'
  sha256 '411855c06547773424dee4105faaa587ae64397b0db96ab26cf0371cf37dabb4'

  # uistore.io was verified as official when first introduced to the cask
  url 'http://downloads.uistore.io/blocs/version-2/Blocs.zip'
  appcast 'https://uistore.io/blocs/2.0/info.xml',
          checkpoint: 'ee41acb820666b1829c395b0ab7dfe418f080ef192e06f9e901547d51e68d683'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  auto_updates true

  app 'Blocs.app'
end
