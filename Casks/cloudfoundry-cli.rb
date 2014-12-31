cask :v1 => 'cloudfoundry-cli' do
  version '6.7.0'
  sha256 '72eece2bf48473313bf57458429828cc65d195600381810d176d633f79388d69'

  url "http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v#{version}/installer-osx-amd64.pkg"
  homepage 'https://github.com/cloudfoundry/cli'
  license :oss

  pkg 'installer-osx-amd64.pkg'

  uninstall :pkgutil => 'com.pivotal.cloudfoundry.pkg'
  caveats do
    files_in_usr_local
  end
end
