cask 'psychopy' do
  version '1.83.03'
  sha256 'bfb5d1d07e7df089d3056e6f4fd9ff6847628d4ed7a24f508f7c79190d1bc753'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-OSX_64bit.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          :sha256 => '84e7f9c46db10e75cab1462602102b57e182c77df92ed703ef75d44625184cef'
  name 'PsychoPy'
  homepage 'http://www.psychopy.org/'
  license :oss

  app 'PsychoPy2.app'
end
