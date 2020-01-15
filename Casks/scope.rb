cask 'scope' do
  version '1.2.3'
  sha256 '45ee3569fc458841c3b44902ec8d1ea6a12d5ac2ffe34fc0835d901250ea6727'

  # releases.undefinedlabs.com/scope was verified as official when first introduced to the cask
  url "https://releases.undefinedlabs.com/scope/local/mac/#{version}/Scope.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://scope.dev/download'
  name 'Scope for Mac'
  homepage 'https://scope.dev/'

  app 'Scope.app'
end
