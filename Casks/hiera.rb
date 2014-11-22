cask :v1 => 'hiera' do
  version '1.3.4'
  sha256 'f0c5342b09b6f48c727ded033e03d207313d3ebf12d41b50b0f2f71fd1c411e9'

  url "https://downloads.puppetlabs.com/mac/hiera-#{version}.dmg"
  homepage 'https://projects.puppetlabs.com/projects/hiera'
  license :unknown

  pkg "hiera-#{version}.pkg"

  uninstall :pkgutil => 'com.puppetlabs.hiera'
end
