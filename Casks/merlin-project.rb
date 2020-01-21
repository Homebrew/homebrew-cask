cask 'merlin-project' do
  version '6.0.6'
  sha256 '2f364c964e64851591f5b8629b50fa9ba7cce2542812cbf05f4fc1e75afc1741'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
