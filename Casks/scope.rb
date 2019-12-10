cask 'scope' do
  version '1.2.2'
  sha256 '9c5c5bb4ba61c977ebc5a39261c3b3b12150f5bf9f235276e38e925aa00d3fb5'

  # releases.undefinedlabs.com/scope was verified as official when first introduced to the cask
  url "https://releases.undefinedlabs.com/scope/local/mac/#{version}/Scope.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://scope.dev/download'
  name 'Scope for Mac'
  homepage 'https://scope.dev/'

  app 'Scope.app'
end
