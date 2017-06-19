cask 'milkytracker' do
  version '1.0.0,1.00.00'
  sha256 '8b8c4ba5e5459b7c83959990d302dce780c01faea7786b47ca0e2b3100b5b364'

  # github.com/milkytracker/MilkyTracker was verified as official when first introduced to the cask
  url "https://github.com/milkytracker/MilkyTracker/releases/download/v#{version.before_comma}/milkytracker-#{version.after_comma}-osx.dmg"
  name 'MilkyTracker'
  homepage 'http://milkytracker.titandemo.org/'

  app 'MilkyTracker.app'
end
