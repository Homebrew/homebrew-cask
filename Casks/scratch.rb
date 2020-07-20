cask 'scratch' do
  version '3.12.0'
  sha256 '7d811ca578a38850e518a0ab22318193201916e533b50b5ca065b97c87c959e1'

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20Desktop-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/download'

  depends_on macos: '>= :high_sierra'

  app 'Scratch Desktop.app'
end
