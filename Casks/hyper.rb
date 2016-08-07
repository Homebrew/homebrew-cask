cask 'hyper' do
  version :latest
  sha256 :no_check

  # hyper-install.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://hyper-install.s3.amazonaws.com/hyper-mac.pkg'
  name 'Hyper'
  homepage 'https://hyper.sh/'
  license :apache

  pkg 'hyper-mac.pkg'

  uninstall script: '/opt/hyper/bin/uninstall-hyper.sh'
end
