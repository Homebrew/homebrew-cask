cask 'geppetto' do
  version '4.3.1-R201501182354'
  sha256 'e01eba5861ecedd963528c3bc24e3b8ad6810aafd25e98080bff9f45f724e756'

  # puppetlabs.com was verified as official when first introduced to the cask
  url "https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86_64-#{version}.zip"
  name 'Geppetto'
  homepage 'https://puppetlabs.github.io/geppetto/'

  app 'geppetto/Geppetto.app'
end
