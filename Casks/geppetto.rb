cask 'geppetto' do
  version '4.3.1-R201501182354'

  if Hardware::CPU.is_32_bit?
    sha256 '8b7e3d9782c5c863185393fcd9f00b9b487af7f778fb2e5289567ace6f1e3866'
    # puppetlabs.com was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86-#{version}.zip"
  else
    sha256 'e01eba5861ecedd963528c3bc24e3b8ad6810aafd25e98080bff9f45f724e756'
    # puppetlabs.com was verified as official when first introduced to the cask
    url "https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86_64-#{version}.zip"
  end

  name 'Geppetto'
  homepage 'https://puppetlabs.github.io/geppetto/'
  license :oss

  app 'geppetto/Geppetto.app'
end
