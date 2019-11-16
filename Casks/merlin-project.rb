cask 'merlin-project' do
  version '6.0.0'
  sha256 'be9357a558c451f5f2dc6820d43fd69de44986cb2c3d2e89fb84d14aa51f88ef'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
