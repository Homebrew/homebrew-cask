cask 'password-assistant' do
  version '1.3.0'
  sha256 '9088a74bcbf440af921dee416a9bbd5688362e60d4b73c88ff8e2013f6d83134'

  url "https://github.com/downloads/tonymet/Password-Assistant/Password%20Assistant-#{version}.dmg"
  name 'Password Assistant'
  homepage 'https://github.com/tonymet/Password-Assistant'
  license :gratis

  app 'Password Assistant.app'
end
