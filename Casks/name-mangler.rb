cask 'name-mangler' do
  version '3.3.4'
  sha256 '7cef3b35a15f6a33a227870342adff64a4aedcd842a5de9d8c9ecfde8217a068'

  url 'https://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast.xml',
          checkpoint: '07b3d34b96bfbc008a7d1df5314abf97b404cf5d92a379ec13269585c7a7d30c'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'
  license :freemium

  app 'Name Mangler.app'
end
