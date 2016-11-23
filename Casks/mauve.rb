cask 'mauve' do
  version '2015.02.25'
  sha256 '3e2e42b90c43669c841dbe43edacff4354874c2c47b5ce9e66c3aee7b9edbf10'

  url "http://darlinglab.org/mauve/snapshots/#{version.major}/#{version.dots_to_hyphens}/MacOS/Mauve-snapshot_#{version.dots_to_hyphens}.dmg"
  name 'Mauve'
  homepage 'http://darlinglab.org/mauve/mauve.html'

  app 'Mauve.app'
end
