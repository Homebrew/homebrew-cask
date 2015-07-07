cask :v1 => 'sente' do
  if MacOS.release <= :snow_leopard
    version '6.6.5.11312'
    sha256 '0a848a2eada32651707e2deec991f06cc068a4c78b23447d38453853d434c2c8'
  else
    version '6.7.8.11870'
    sha256 'f75bb32db9f0dbfa3d5dbf7639371b5892f6071e740de38e768a203899bb4b5b'
  end

  url "https://www.thirdstreetsoftware.com/downloads/Sente-#{version}.zip"
  appcast 'https://www.thirdstreetsoftware.com/rss/Sente65.xml?v=6.6.0',
          :sha256 => '2083ee7a01313014c7d600e13018709521fd3f53d767bd31cd8d2caec2120c7f'
  name 'Sente'
  homepage 'http://www.thirdstreetsoftware.com'
  license :freemium

  app 'Sente 6.app'
end
