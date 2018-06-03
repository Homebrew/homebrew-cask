cask 'dcpomatic2' do
  version '2.12.6'
  sha256 '4b3ae99dec3bbf5f348f58a47f4841b8272fc3fad8372e5def4f98ea1a9f0665'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  name 'DCP-o-matic 2'
  homepage 'https://dcpomatic.com/'

  app 'DCP-o-matic 2.app'

  caveats <<~EOS
    Please consider making a donation for DPC-o-matic to support further development.

    https://dcpomatic.com/donate
  EOS
end
