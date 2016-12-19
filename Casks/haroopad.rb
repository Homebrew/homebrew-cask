cask 'haroopad' do
  version '0.13.2'
  sha256 '97ef0a7df52daeace17ea01a1ca82dc974955c147593f251fb7c04ca0ff09064'

  # bitbucket.org/rhiokim/haroopad-download was verified as official when first introduced to the cask
  url "https://bitbucket.org/rhiokim/haroopad-download/downloads/Haroopad-v#{version}-x64.dmg"
  appcast 'https://api.bitbucket.org/2.0/repositories/rhiokim/haroopad-download/downloads',
          checkpoint: '18a1125d12b7dfed1a60b96a8f978947c4ab6b63c130d62f2686e22fab03a3ee'
  name 'Haroopad'
  homepage 'http://pad.haroopress.com/'

  app 'Haroopad.app'
end
