cask 'fontplop' do
  version '1.2.0'
  sha256 'b842509b4208c9a0b9a3c82a850b066e6fb395bede746b2ec2710a0555bc3dd0'

  # github.com/matthewgonzalez/fontplop was verified as official when first introduced to the cask
  url "https://github.com/matthewgonzalez/fontplop/releases/download/v#{version}/fontplop-#{version}.dmg"
  appcast 'https://github.com/matthewgonzalez/fontplop/releases.atom',
          checkpoint: 'f44322ad99ee9f7609997e1be5d9a7215397fccf60ca265023c73f5186a2edb8'
  name 'Fontplop'
  homepage 'http://www.fontplop.com/'

  app 'fontplop.app'
end
