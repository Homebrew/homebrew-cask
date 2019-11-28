cask 'scope' do
  version :latest
  sha256 :no_check

  # home.undefinedlabs.com was verified as official when first introduced to the cask
  url 'https://home.undefinedlabs.com/goto/download-scope-for-mac'
  name 'Scope for Mac'
  homepage 'https://scope.dev/'

  app 'Scope.app'
end
