cask :v1 => 'cloudfoundry-cli' do
  version '6.12.1'
  sha256 '4810c0dc3427db8f1c81c3f658dd5e6265120ae109ea438d1969ba7b96b6db84'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v#{version}/installer-osx-amd64.pkg"
  name 'Cloud Foundry CLI'
  homepage 'https://github.com/cloudfoundry/cli'
  license :apache

  pkg 'installer-osx-amd64.pkg'

  uninstall :pkgutil => 'com.pivotal.cloudfoundry.pkg'

  caveats do
    files_in_usr_local
  end
end
