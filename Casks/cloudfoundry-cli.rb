cask 'cloudfoundry-cli' do
  version '6.16.1'
  sha256 'b949e6412ea19c63ad2e18b47d406f2a76329a7233da206c6c2fdebc24292e49'

  # go-cli.s3-website-us-east-1.amazonaws.com was verified as official when first introduced to the cask
  url "http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v#{version}/cf-cli-installer_#{version}_osx.pkg"
  appcast 'https://github.com/cloudfoundry/cli/releases.atom',
          checkpoint: '4496f341b3beef3dca4d0a1b358f2607a0122bcfb99eba29c72b65efaafb9d04'
  name 'Cloud Foundry CLI'
  homepage 'https://github.com/cloudfoundry/cli'
  license :apache

  pkg "cf-cli-installer_#{version}_osx.pkg"

  uninstall pkgutil: 'com.cloudfoundry.cli.pkg'

  caveats do
    files_in_usr_local
  end
end
