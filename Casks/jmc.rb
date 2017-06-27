cask 'jmc' do
  version '0.1-pre'
  sha256 'ff088c349987adcb2fc12fb1636955c4ac0532d3c151b2e405e4a74bbafda284'

  url "https://github.com/jcm93/jmc/releases/download/v#{version}/jmc.app.zip"
  appcast 'https://github.com/jcm93/jmc/releases.atom',
          checkpoint: 'c8afebeff0e6d8d5e4e4b12883153b7899213652bfbd6347ff5f980dabbf1d69'
  name 'jmc'
  homepage 'https://github.com/jcm93/jmc'

  app 'jmc.app'
end
