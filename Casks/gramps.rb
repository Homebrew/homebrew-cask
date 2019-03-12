cask 'gramps' do
  version '5.0.1-1'
  sha256 '6e53348fdbd3e30b1e7979e5037824091963b66dae98db203d5c1b631f7a3742'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom'
  name 'Gramps'
  homepage 'https://gramps-project.org/introduction-WP/'

  app 'Gramps.app'
end
