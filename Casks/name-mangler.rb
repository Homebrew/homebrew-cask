cask 'name-mangler' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast.xml',
          :sha256 => '07b3d34b96bfbc008a7d1df5314abf97b404cf5d92a379ec13269585c7a7d30c'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'
  license :freemium

  app 'Name Mangler.app'
end
