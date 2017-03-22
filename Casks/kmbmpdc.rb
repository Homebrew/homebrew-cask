cask 'kmbmpdc' do
  version '1.2.0'
  sha256 'eb63532caee8a62e1e58d254460a90236946183800fb3df14e459bd13da0b46c'

  url "https://github.com/arttuperala/kmbmpdc/releases/download/v#{version}/kmbmpdc.tar.gz"
  appcast 'https://github.com/arttuperala/kmbmpdc/releases.atom',
          checkpoint: '01046900fc9949d7658242a92877fe000cd9103460273cbef91668fb77ea8cc0'
  name 'kmbmpdc'
  homepage 'https://github.com/arttuperala/kmbmpdc'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'kmbmpdc.app'
end
