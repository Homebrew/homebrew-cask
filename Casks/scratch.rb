cask 'scratch' do
  version '3.10.2'
  sha256 '3e2959ba7928f95f823826e29b41e57e4aa83f771350a871ab6782ae612a0544'

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20Desktop-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/download'

  depends_on macos: '>= :high_sierra'

  app 'Scratch Desktop.app'
end
