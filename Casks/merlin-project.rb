cask 'merlin-project' do
  version '6.3.2'
  sha256 '72580b1b1583a8b2217c251601611bff46b73ab6abe53e75c55ef1b569fb8908'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
