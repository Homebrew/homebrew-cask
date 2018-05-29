cask 'netron' do
  version '1.8.4'
  sha256 '7ada474040b47723976d9fb011f20cf6b653d06072ef5d7a9dd7507dada79769'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '4651fa86c75e572811821b126fd890c974871df4e22be303b6f229f98ba15062'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
