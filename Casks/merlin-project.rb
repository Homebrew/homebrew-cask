cask 'merlin-project' do
  version '6.0.5'
  sha256 '4df730ec45bab4f318c342ec8cc3e52b7f68301d447dfd1c70091fd451d6f2b2'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
