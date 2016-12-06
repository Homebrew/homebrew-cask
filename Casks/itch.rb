cask 'itch' do
  version '21.0.4'
  sha256 'e9f9534d1f5d546ae37f91be006e850e897a8dc8dcf3a7455ad02732d3935fae'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: 'ac9fe2cf1674b608e30748749a23d0a2acde99de33cb63f8e51ad18f56bc8cee'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
