cask 'merlin-project' do
  version '6.0.7'
  sha256 '6c78c1ecc3987da34331d888fd38702c35433a5f1db486e50dab7b57ec1a76ee'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
