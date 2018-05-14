cask 'discretescroll' do
  version '0.1.1'
  sha256 '334be6c8d84c11ee1ef1ac96d891c3b24cfc4efb8c6a11a2042630961e2952ab'

  url "https://github.com/emreyolcu/discrete-scroll/releases/download/v#{version}/DiscreteScroll.zip"
  appcast 'https://github.com/emreyolcu/discrete-scroll/releases.atom',
          checkpoint: '7bd58e99f4edd9107aa5cb48489be7a2f269230a868d306f9a4a109903a6c4c6'
  name 'DiscreteScroll'
  homepage 'https://github.com/emreyolcu/discrete-scroll'

  app 'DiscreteScroll.app'
end
