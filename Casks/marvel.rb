cask 'marvel' do
  version '7.3.1'
  sha256 'e2a24ae3fc2a5242977d007946c45c07af4e41cf1033249a3773fe4ba4d16b44'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: '525fcf6f57356a788014f9dc31e8dc5a59cf36ddbada08866c21a54a66a1779a'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
