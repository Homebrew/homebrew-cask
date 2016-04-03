cask 'hypercli' do
  version :latest
  sha256 :no_check

  # hypercli-install.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://hypercli-install.s3.amazonaws.com/hypercli.pkg'
  name 'Hyper_ client'
  homepage 'https://hyper.sh/'
  license :apache

  pkg 'hypercli.pkg'

  uninstall delete: '/usr/local/bin/hyper'
end
