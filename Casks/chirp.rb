cask 'chirp' do
  version '0.4.1'
  sha256 '3e7800db7f73c15aa1bf126a60b23617ec549bfd84adf64e8f3a1d41091cce59'

  url "http://chirp.danplanet.com/download/#{version}/chirp-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/'
  license :gpl

  app "chirp-#{version}.app"

  caveats <<-EOS.undent
    #{token} also requires the KK7DS Python Runtime as described at

      http://chirp.danplanet.com/projects/chirp/wiki/Download#CHIRP-Downloads
  EOS
end
