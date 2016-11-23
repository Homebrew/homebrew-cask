cask 'mauve' do
  version '2015.02.25'
  sha256 '7a9586ef3b83aa7678424a3f17ac15a257ff520b3968d78e1345b3c69b23c171'

  url "http://darlinglab.org/mauve/snapshots/#{version.major}/#{version.dots_to_hyphens}/MacOS/Mauve-snapshot_#{version.dots_to_hyphens}.dmg"
  name 'Mauve'
  homepage 'http://darlinglab.org/mauve/mauve.html'

  app 'Mauve.app'
end
