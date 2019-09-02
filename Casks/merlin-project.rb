cask 'merlin-project' do
  version '5.1.10'
  sha256 '82b4b70b24a8cd5ef3801048c0fe8046733e83956db4e681938ded00db592a9e'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
