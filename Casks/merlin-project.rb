cask 'merlin-project' do
  version '6.2.1'
  sha256 'ee01d3dd1b3986770a1e82f71ae28754a08f2c121fd552c62dce473136d2a965'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
