cask 'merlin-project' do
  version '6.0.2'
  sha256 'a76276f374ab6d0d878fde97bc574ad115d0bd75355a02301d2d42643bce6f7d'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
