cask 'leech' do
  version '3.1'
  sha256 'e8553da6c6eaca569e87b0188b7c0bb6eab64dbc874c8c151768c6bf96c2470e'

  url 'https://manytricks.com/download/leech'
  appcast 'https://manytricks.com/leech/appcast',
          checkpoint: 'f9cecd1ce9a086e6f5ecbc7d5fd5fec8f78d60090b3c257d6c5c273c33a9d1d6'
  name 'Leech'
  homepage 'https://manytricks.com/leech/'

  auto_updates true

  app 'Leech.app'
end
