cask 'name-mangler' do
  version '3.5'
  sha256 '2f896e219820beade8e0f9bd9cd337cf3a59a35aaf1aabdec5a2a64ca9897943'

  url 'https://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast/'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'

  auto_updates true

  app 'Name Mangler.app'
end
