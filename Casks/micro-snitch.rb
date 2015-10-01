cask :v1 => 'micro-snitch' do
  version '1.1.2'
  sha256 'a1d49f8a94524d0d242fb505dac24dc1f8f152bd7794fa5a0f0215366f63f367'

  url "https://obdev.at/downloads/MicroSnitch/MicroSnitch-#{version}.zip"
  name 'Micro Snitch'
  homepage 'https://obdev.at/products/microsnitch/'
  license :commercial

  app 'Micro Snitch.app'
end
