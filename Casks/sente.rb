cask 'sente' do
  if MacOS.release <= :snow_leopard
    version '6.6.5.11312'
    sha256 '0a848a2eada32651707e2deec991f06cc068a4c78b23447d38453853d434c2c8'
  elsif MacOS.release <= :yosemite
    version '6.7.8.11870'
    sha256 'f75bb32db9f0dbfa3d5dbf7639371b5892f6071e740de38e768a203899bb4b5b'
  else
    version '6.7.9.11905'
    sha256 '7ba39f82155b7bd7a4b76e8c8edd8a52e84a2b64b5cd823f762b9236318169f8'
  end

  url "https://www.thirdstreetsoftware.com/downloads/Sente-#{version}.zip"
  appcast 'https://www.thirdstreetsoftware.com/rss/Sente65.xml',
          checkpoint: 'aaabfb0506ef8ffa3e825478a5a7bc643ab9098f6984ce56d1c99a2bd7a00808'
  name 'Sente'
  homepage 'https://www.thirdstreetsoftware.com'
  license :freemium

  app "Sente #{version.major}.app"
end
