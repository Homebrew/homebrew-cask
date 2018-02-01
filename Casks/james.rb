cask 'james' do
  version '2.0.0'
  sha256 '623240fa2f919b631f338caff9678dc3abfd3f685a97241ca05343bec55a764a'

  url "https://github.com/james-proxy/james/releases/download/v#{version}/james-#{version}.dmg"
  appcast 'https://github.com/james-proxy/james/releases.atom',
          checkpoint: 'cf293843a8da7306e414a65a2eb72cb1e655e864f32d5cdac2dc61b65cb06644'
  name 'James'
  homepage 'https://github.com/james-proxy/james'

  app 'James.app'
end
