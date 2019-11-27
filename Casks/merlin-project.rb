cask 'merlin-project' do
  version '6.0.4'
  sha256 'ce1ccac05ecef54668911b0cd8c65bec0c80e5c8200a2aca84c4a825371fd62a'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
