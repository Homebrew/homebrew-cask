cask 'electrum-dash' do
  version '2.9.3.1'
  sha256 'a9a7f0f3b0d74984db62627331cebc1d1da331b0e5143176d8b0ae958e754a83'

  # github.com/akhavr/electrum-dash was verified as official when first introduced to the cask
  url "https://github.com/akhavr/electrum-dash/releases/download/#{version}/electrum-dash-#{version}-macosx.dmg"
  name 'Electrum-DASH'
  homepage 'https://electrum.dash.org/'
  gpg "#{url}.asc", key_id: '64a3ba822f449d50'

  app 'Electrum-DASH.app'
end
