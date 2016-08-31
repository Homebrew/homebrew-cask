cask 'franz' do
  version '4.0.0'
  sha256 '62b5e3359ba3e6fbb69d1dc2dbdf28761ba401b73fcf9608b190f3b4ff06b1be'

  # github.com/imprecision/franz-app was verified as official when first introduced to the cask
  url "https://github.com/imprecision/franz-app/releases/download/#{version}/Franz-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/imprecision/franz-app/releases.atom',
          checkpoint: 'cbcb16bcd3afd82c869abf1ff97e771d83dbc7eafbc10cb55b17d2272ca998b3'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
