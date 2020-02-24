cask 'lincastor' do
  version '2.3'
  sha256 '6e645f9872be96c010983e45ba81dff742632bbfbc0782c971963c9593a54628'

  # onflapp.github.io/blog/releases was verified as official when first introduced to the cask
  url 'https://onflapp.github.io/blog/releases/lincastor/LinCastor.zip'
  appcast 'https://onflapp.github.io/blog/releases/lincastor/appcast.xml'
  name 'LinCastor'
  homepage 'https://onflapp.wordpress.com/lincastor/'

  depends_on macos: '>= :sierra'

  app 'LinCastor.app'
end
