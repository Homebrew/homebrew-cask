cask 'local-by-flywheel' do
  version '2.0.8'
  sha256 'ca0fc617dd1bf0f38d0274b54362c75f06d25411e3c7221aa198aab08cc7235d'

  # local-by-flywheel-flywheel.netdna-ssl.com was verified as official when first introduced to the cask
  url 'https://local-by-flywheel-flywheel.netdna-ssl.com/releases/2-0-8/local-by-flywheel-2-0-8-mac.zip'
  name 'Local by Flywheel'
  homepage 'https://local.getflywheel.com/'

  app 'Local by Flywheel.app'
end
