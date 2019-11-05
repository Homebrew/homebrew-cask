cask 'merlin-project' do
  version '5.1.14'
  sha256 'd5bb512d8d0a7bb0480e2bbc151e2c7d429f79a9382e00e19f8dfd9ca5007971'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
