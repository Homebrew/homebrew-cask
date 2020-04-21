cask 'merlin-project' do
  version '6.3.0'
  sha256 '494ce72e4510836d3bdcb4655dae38cc17887e752c6b77f5035e5fca19b0be48'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
