cask 'shiba' do
  version '1.2.0'
  sha256 '9df054565afadd0b7ae808dd8f47725bacb5737edb9db9ec635150a0398f603f'

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  appcast 'https://github.com/rhysd/Shiba/releases.atom',
          checkpoint: 'f2c0d3b68451b1df8e36ab3510a7c6fc493f10bfff699fbd3da4cad8d0d1ce26'
  name 'Shiba'
  homepage 'https://github.com/rhysd/Shiba/'

  app 'Shiba-darwin-x64/Shiba.app'
end
