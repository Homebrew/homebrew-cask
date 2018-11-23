cask 'bowser' do
  version '0.1.1'
  sha256 '036301e90b9650793be4d5c43fb55fd23732e1a61f285eeb55bc3589ab58c480'

  url "https://github.com/netgusto/#{token}/releases/download/#{version}/Bowser.#{version}.dmg"
  appcast "https://github.com/netgusto/#{token}/releases.atom"
  name 'Bowser'
  homepage 'https://github.com/netgusto/bowser'

  app 'Bowser.app'

  zap trash: '~/.config/bowser'

  caveats "Please see #{homepage} in order to get started with configuration."
end
