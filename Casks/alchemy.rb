cask 'alchemy' do
  version '008'
  sha256 '7527f4e2231db8167c57d2639fcba166d8fefea091cca7884bd355fb52a3449a'

  url "http://al.chemy.org/files/Alchemy-#{version}.dmg"
  appcast 'http://al.chemy.org/download/version-history/',
          checkpoint: '928e7589723203a02de2a4785008411034ea5011e7cdddf6b81ae310c2aa44b0'
  name 'Alchemy'
  homepage 'http://al.chemy.org/'

  app 'Alchemy/Alchemy.app'
end
