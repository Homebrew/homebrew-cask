cask :v1 => 'micro-snitch' do
  version '1.0.1'
  sha256 'b68f750f9e7ce00a2abdcf2bd467f30b33ba0f975db64bc9aa84de02c5e1ccc6'

  url "https://obdev.at/downloads/MicroSnitch/MicroSnitch-#{version}.zip"
  name 'Micro Snitch'
  homepage 'https://obdev.at/products/microsnitch/'
  license :commercial

  app 'Micro Snitch.app'
end
