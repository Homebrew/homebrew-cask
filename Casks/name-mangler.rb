cask 'name-mangler' do
  version '3.4.1'
  sha256 '040b98d0d0da0f4457b6186d9a3854165bf59dad3b45e61f5df6dbee4173c710'

  url 'https://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast/'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'

  auto_updates true

  app 'Name Mangler.app'
end
