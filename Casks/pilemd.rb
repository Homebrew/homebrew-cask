cask 'pilemd' do
  version '0.9.0'
  sha256 'f0595753a962c7a93a2ba1b968ba52b56aa8fa3d6a0051994d488c1674fceca9'

  # s3-ap-northeast-1.amazonaws.com/pile-md-dist was verified as official when first introduced to the cask
  url "https://s3-ap-northeast-1.amazonaws.com/pile-md-dist/pilemd.darwin-x64.#{version}.zip"
  appcast 'https://github.com/hirokiky/pilemd/releases.atom',
          checkpoint: '2523ae0470c655ca89a8b1372c7c131b13725398405519edfed9930d3ad98bd9'
  name 'PileMd'
  homepage 'https://pilemd.com/'

  app 'PileMd.app'
end
