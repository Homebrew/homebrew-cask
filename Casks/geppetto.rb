cask 'geppetto' do
  version '4.3.0-R201409300140'

  if Hardware::CPU.is_32_bit?
    sha256 'd470ca583fd7be26fc0f2b24ee8ee35f101ec215bafc1cbc5b3455040eb0d2b3'
    # puppetlabs.com was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86-#{version}.zip"
  else
    sha256 'c21a3522eead31643985108c6467de1956b21626e03e9c30050b31f9df0a9bd7'
    # puppetlabs.com was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86_64-#{version}.zip"
  end

  name 'Geppetto'
  homepage 'https://puppetlabs.github.io/geppetto/'
  license :oss

  app 'geppetto/Geppetto.app'
end
