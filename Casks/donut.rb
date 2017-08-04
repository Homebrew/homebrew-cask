cask 'donut' do
  version '2.4.0'
  sha256 '03d46d2701cf340675cc57d1bd1b6c769ae67516fb33466d507142317f84bd10'

  # github.com/harshjv/donut was verified as official when first introduced to the cask
  url "https://github.com/harshjv/donut/releases/download/#{version}/donut-#{version}.dmg"
  appcast 'https://github.com/harshjv/donut/releases.atom',
          checkpoint: '51dbb61af89a2dd2d170623a81a7d121facd4532130ae3ca6743b5d9ded49be4'
  name 'donut'
  homepage 'https://harshjv.github.io/donut/'

  app 'donut.app'
end
