cask 'scope' do
  version '1.2.4'
  sha256 '7b6903513a944d250f360a2524e8228a0c7baaf9f68a443810be5c51ec4707c4'

  # releases.undefinedlabs.com/scope/ was verified as official when first introduced to the cask
  url "https://releases.undefinedlabs.com/scope/local/mac/#{version}/Scope.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://scope.dev/download'
  name 'Scope for Mac'
  homepage 'https://scope.dev/'

  app 'Scope.app'
end
