cask :v1 => 'cloudfoundry-cli' do
  version '6.6.1'
  sha256 '1a159944a447b4b321513cadd8c009477dc084ce22b6bfd2e5e20382d98bb5e5'

  url "http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v#{version}/installer-osx-amd64.pkg"
  homepage 'https://github.com/cloudfoundry/cli'
  license :oss

  pkg 'installer-osx-amd64.pkg'
  uninstall :pkgutil => 'com.pivotal.cloudfoundry.pkg'
  caveats do
    files_in_usr_local
  end
end
