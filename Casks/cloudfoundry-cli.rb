cask :v1 => 'cloudfoundry-cli' do
  version '6.10.0'
  sha256 '35e8552119b989ab6f3acac10f8dfdf49c3efe20d6f96c141c2129a519342222'

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
