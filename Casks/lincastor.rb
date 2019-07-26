cask 'lincastor' do
  version '2.2'
  sha256 'f4cbbe5f684025fea27839372b7b143b89f9bebd0024a4df03ba33aab48aea88'

  # onflapp.github.io/blog/releases was verified as official when first introduced to the cask
  url 'https://onflapp.github.io/blog/releases/lincastor/LinCastor.zip'
  appcast 'https://onflapp.github.io/blog/releases/lincastor/appcast.xml'
  name 'LinCastor'
  homepage 'https://onflapp.wordpress.com/lincastor/'

  depends_on macos: '>= :sierra'

  app 'LinCastor.app'
end
