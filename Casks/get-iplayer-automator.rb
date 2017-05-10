cask 'get-iplayer-automator' do
  version '1.8.7'
  sha256 'd4b3cf156cb0d101a4a4c4799b92c0bdd276adcb5af73b9eeb6b7e2f75a87acb'

  url "https://github.com/GetiPlayerAutomator/get-iplayer-automator/releases/download/#{version}/GetiPlayerAutomator_#{version}.zip"
  appcast 'https://github.com/GetiPlayerAutomator/get-iplayer-automator/releases.atom',
          checkpoint: '2ed72d317dc422061777add8be77af1b6e0625addb3b933aa57fbb504f193f00'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/GetiPlayerAutomator/get-iplayer-automator'

  depends_on macos: '>= 10.7'

  app 'Get iPlayer Automator.app'
end
