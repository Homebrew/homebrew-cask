cask 'sorbet' do
  version '0.4.5085.20191130175112-e9dddf67d'
  sha256 '26c37639190ba53aa817fb0ac43792a1c8005ac38ef5b1dd911ef5b0472426b7'

  # github.com/sorbet/sorbet was verified as official when first introduced to the cask
  url "https://github.com/sorbet/sorbet/releases/download/#{version}/mac.sorbet"
  appcast 'https://github.com/sorbet/sorbet/releases.atom'
  name 'Sorbet'
  name 'sorbet'
  homepage 'https://sorbet.org/'

  binary 'mac.sorbet', target: 'sorbet'
end
