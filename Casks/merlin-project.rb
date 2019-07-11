cask 'merlin-project' do
  version '5.1.8'
  sha256 'c0078a33ea445be8cb179ecfa15ce8aa4a504d5ea6c21e0de3f7c5bd891ab743'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
