cask :v1 => 'cloudfoundry-cli' do
  version '6.11.3'
  sha256 'a8534a3e4dcc285f127d7d32d62ebcf8dd03ed9003c80bf0c4633d0b72faec07'

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
