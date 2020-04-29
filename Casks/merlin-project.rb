cask 'merlin-project' do
  version '6.3.1'
  sha256 'e2e07eac68e21c85efe47c85b7da43b63fe75e50a84c295c78cd3279486884f1'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
