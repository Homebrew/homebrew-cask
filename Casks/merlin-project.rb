cask 'merlin-project' do
  version '6.1.2'
  sha256 '11f4edc4aabc8adfe47ef03aac91ba083b43e779eb56f65f8ee8ec1af41fb108'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
