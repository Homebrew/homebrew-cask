cask 'scratch' do
  version '3.5.0'
  sha256 '29c21e2622d6421fb211d8af14868b391855eb216c3d10734f5e985c5fd57161'

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20Desktop-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/download'

  depends_on macos: '>= :high_sierra'

  app 'Scratch Desktop.app'
end
