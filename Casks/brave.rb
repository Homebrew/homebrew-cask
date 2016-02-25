cask 'brave' do
  version '0.7.16dev'
  sha256 '76c401072c769ea11d8e3673d9089a92bb743f7f8bf432927463f9c46b28d366'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'ca072eb03b037e4d5308e0a400c0188ffdb4ae8da4ab44f692a0779edcaf6dbe'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'
end
