cask 'openrefine' do
  version '2.8'
  sha256 'c11faaeb89701fc1fbf76adaf54972584a10cc61bcf6b485849608f10649eb08'

  # github.com/OpenRefine/OpenRefine was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  appcast 'https://github.com/OpenRefine/OpenRefine/releases.atom'
  name 'OpenRefine'
  homepage 'http://openrefine.org/'

  app 'OpenRefine.app'
end
