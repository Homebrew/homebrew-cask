cask 'oryoki' do
  version '0.2.0'
  sha256 'cf1c7ef670a59d7d057124d4c317c3364ddf9b5af56d7a5a6bb04cb265a84d0a'

  # github.com/thmsbfft/oryoki was verified as official when first introduced to the cask
  url "https://github.com/thmsbfft/oryoki/releases/download/#{version}/Oryoki-#{version}.zip"
  appcast 'https://github.com/thmsbfft/oryoki/releases.atom',
          checkpoint: '5d4623ac6726b9fd837312f0f02f2ed2658e43d7e91793431896c3363648d7fb'
  name 'Oryoki'
  name 'Ōryōki'
  name '応量器'
  homepage 'http://oryoki.io/'

  depends_on macos: '>= :el_capitan'

  app 'Oryoki.app'
end
