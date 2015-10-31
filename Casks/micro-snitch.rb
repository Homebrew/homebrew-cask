cask :v1 => 'micro-snitch' do
  version '1.2'
  sha256 '7749a1bbc88a7a4bcb246d9f6d8b4d46b4faabfb95f7a8706be28570dcc09115'

  url "https://obdev.at/downloads/MicroSnitch/MicroSnitch-#{version}.zip"
  name 'Micro Snitch'
  homepage 'https://obdev.at/products/microsnitch/'
  license :commercial

  app 'Micro Snitch.app'
end
