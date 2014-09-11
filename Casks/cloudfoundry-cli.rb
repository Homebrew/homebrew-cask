class CloudfoundryCli < Cask
  version '6.2.0'
  sha256 'c804b4245a194a1028b5ac2fe074755d18a8aa2eb37bfc9978a5a4e47e9e644d'

  url 'http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v6.2.0/installer-osx-amd64.pkg'
  homepage 'https://github.com/cloudfoundry/cli'

  pkg 'installer-osx-amd64.pkg'
  uninstall :pkgutil => 'com.pivotal.cloudfoundry.pkg'
  caveats do
    files_in_usr_local
  end
end
