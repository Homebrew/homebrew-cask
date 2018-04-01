cask 'milkytracker' do
  version '1.01.00'
  sha256 'bfaa71fddd41aa0b9220eca3b0de6953061aa60b730dbea80a79a4c42ca33e9b'

  # github.com/milkytracker/MilkyTracker was verified as official when first introduced to the cask
  url "https://github.com/milkytracker/MilkyTracker/releases/download/v#{version}/milkytracker-#{version}.dmg"
  appcast 'https://github.com/milkytracker/MilkyTracker/releases.atom',
          checkpoint: '8505703fe680236448c273062676dc530af227958f3fb00c7803c4953b76ca84'
  name 'MilkyTracker'
  homepage 'http://milkytracker.titandemo.org/'

  app 'MilkyTracker.app'
end
