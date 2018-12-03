cask 'syrinscape' do
  version '1.3.7-20180730'
  sha256 'cff21438b856171fa8f1b7f7fea670535366060338af4483dde41dfb4cc6982e'

  url "https://syrinscape.com/get-download/syrinscape-mac-#{version}?type=mac&version=#{version}"
  name 'Syrinscape Fantasy Player'
  homepage 'https://syrinscape.com/'

  app 'Syrinscape.app'
end
