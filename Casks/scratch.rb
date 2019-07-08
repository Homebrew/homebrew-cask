cask 'scratch' do
  version '3.4.0'
  sha256 'bfe3d9ca5045d78d3d34455b54f3154fcdaaa9e4146f63e52da44b0c51e67440'

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20Desktop-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/download'

  depends_on macos: '>= :high_sierra'

  app 'Scratch Desktop.app'
end
