cask :v1 => 'micro-snitch' do
  version '1.1.1'
  sha256 '494eedf1a8f87cb846eb37279bca7aecd851157bdd31347ab8e1d8f219613680'

  url "https://obdev.at/downloads/MicroSnitch/MicroSnitch-#{version}.zip"
  name 'Micro Snitch'
  homepage 'https://obdev.at/products/microsnitch/'
  license :commercial

  app 'Micro Snitch.app'
end
