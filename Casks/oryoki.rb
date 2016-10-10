cask 'oryoki' do
  version '0.0.4'
  sha256 '9936a9518e550297aec7add335cb56446b9eb447b5ae3bf9bf8da7492a42bd58'

  # github.com/thmsbfft/oryoki was verified as official when first introduced to the cask
  url "https://github.com/thmsbfft/oryoki/releases/download/#{version}/Oryoki-#{version}.zip"
  appcast 'https://github.com/thmsbfft/oryoki/releases.atom',
          checkpoint: '9e55a53a7930644516bb896ae8ea7be624586ebc08c8cb17d127ae3596a17107'
  name 'Oryoki'
  homepage 'http://oryoki.io/'

  app 'Oryoki.app'
end
