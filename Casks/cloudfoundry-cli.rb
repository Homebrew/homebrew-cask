cask 'cloudfoundry-cli' do
  version '6.15.0'
  sha256 '3cf02b7c61d6a7478af7babe7ffb6ddb223d700a17d24e90505cdadbc1c156cd'

  # go-cli.s3-website-us-east-1.amazonaws.com was verified as official when first introduced to the cask
  url "http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v#{version}/cf-cli-installer_#{version}_osx.pkg"
  appcast 'https://github.com/cloudfoundry/cli/releases.atom',
          checkpoint: '318f30fea6b60551aabc9f73e4b2e685e0200ec12504f2475445e6a5c7c81f35'
  name 'Cloud Foundry CLI'
  homepage 'https://github.com/cloudfoundry/cli'
  license :apache

  pkg "cf-cli-installer_#{version}_osx.pkg"

  uninstall pkgutil: 'com.cloudfoundry.cli.pkg'

  caveats do
    files_in_usr_local
  end
end
