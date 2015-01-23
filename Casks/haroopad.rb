cask :v1 => 'haroopad' do
  version '0.13.0'
  sha256 '79a003c4db33b393ff5e47e493e54cd27ceb2a94141a116cf58373c1882a798c'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/rhiokim/haroopad-download/downloads/Haroopad-v#{version}-x64.dmg"
  homepage 'http://pad.haroopress.com/'
  license :oss

  app 'haroopad.app'
end