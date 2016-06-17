cask 'pilemd' do
  version '0.9.0'
  sha256 '979437c71a54372f29c87f64ae4bc784f358fa10a810f6c5c786885f2e4a087a'

  url "https://s3-ap-northeast-1.amazonaws.com/pile-md-dist/pilemd.darwin-x64.#{version}.zip"
  appcast 'https://github.com/hirokiky/pilemd/releases.atom',
          checkpoint: '2523ae0470c655ca89a8b1372c7c131b13725398405519edfed9930d3ad98bd9'
  name 'PileMd'
  homepage 'https://pilemd.com/'
  license :gpl

  app 'PileMd.app'
end
