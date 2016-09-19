cask 'sente' do
  if MacOS.version <= :snow_leopard
    version '6.6.5.11312'
    sha256 '0a848a2eada32651707e2deec991f06cc068a4c78b23447d38453853d434c2c8'
  elsif MacOS.version <= :yosemite
    version '6.7.8.11870'
    sha256 'f75bb32db9f0dbfa3d5dbf7639371b5892f6071e740de38e768a203899bb4b5b'
  else
    version '6.7.11.11926'
    sha256 '5ce3f5a23fa3dc532745a84bcbd5adfc990cd3ddb82bac58301221be28f6e9a8'
  end

  url "https://www.thirdstreetsoftware.com/downloads/Sente-#{version}.zip"
  appcast 'https://www.thirdstreetsoftware.com/rss/Sente65.xml',
          checkpoint: '6714309fa46724f80c4cafcb811d132ff0f1ac9c37dde306cf58fe084633aa47'
  name 'Sente'
  homepage 'https://www.thirdstreetsoftware.com'
  license :freemium

  app "Sente #{version.major}.app"
end
