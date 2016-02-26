cask 'cloudfoundry-cli' do
  version '6.16.0'
  sha256 '5a6d5c231a1e89783ac756ff1af01fa740544a74c26d3053dec5c130bc307844'

  # go-cli.s3-website-us-east-1.amazonaws.com was verified as official when first introduced to the cask
  url "http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v#{version}/cf-cli-installer_#{version}_osx.pkg"
  appcast 'https://github.com/cloudfoundry/cli/releases.atom',
          checkpoint: '1a10c380a1ebc2e415fb7e3a34f9c4ae4712bd06a670efb39f3a6a45f38a2c91'
  name 'Cloud Foundry CLI'
  homepage 'https://github.com/cloudfoundry/cli'
  license :apache

  pkg "cf-cli-installer_#{version}_osx.pkg"

  uninstall pkgutil: 'com.cloudfoundry.cli.pkg'

  caveats do
    files_in_usr_local
  end
end
