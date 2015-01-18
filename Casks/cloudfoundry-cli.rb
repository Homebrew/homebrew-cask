cask :v1 => 'cloudfoundry-cli' do
  version '6.8.0'
  sha256 'ae21984e6658a094940cbc898235e2285da3f53437aa07c6607aa9c288197162'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v#{version}/installer-osx-amd64.pkg"
  name 'Cloud Foundry CLI'
  homepage 'https://github.com/cloudfoundry/cli'
  license :oss

  pkg 'installer-osx-amd64.pkg'

  uninstall :pkgutil => 'com.pivotal.cloudfoundry.pkg'
  caveats do
    files_in_usr_local
  end
end
