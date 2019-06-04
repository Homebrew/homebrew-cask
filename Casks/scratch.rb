cask 'scratch' do
  version '3.3.0'
  sha256 'e1cfa639dd796f0ac3c0cd4743c90396a10a80c82ca0f3cfc08ea514ebe3d5bf'

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20Desktop-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/download'

  depends_on macos: '>= :high_sierra'

  app 'Scratch Desktop.app'
end
