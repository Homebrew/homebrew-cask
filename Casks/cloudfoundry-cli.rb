cask 'cloudfoundry-cli' do
  version '6.15.0'
  sha256 '3cf02b7c61d6a7478af7babe7ffb6ddb223d700a17d24e90505cdadbc1c156cd'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v#{version}/cf-cli-installer_#{version}_osx.pkg"
  name 'Cloud Foundry CLI'
  homepage 'https://github.com/cloudfoundry/cli'
  license :apache

  pkg "cf-cli-installer_#{version}_osx.pkg"

  uninstall pkgutil: 'com.cloudfoundry.cli.pkg'

  caveats do
    files_in_usr_local
  end
end
