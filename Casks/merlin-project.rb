cask 'merlin-project' do
  version '5.1.13'
  sha256 '039253c84621115c0e5077c7ce40438f5e79aaacaa614f458bdce432393a5e58'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
