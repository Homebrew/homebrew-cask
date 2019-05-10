cask 'lincastor' do
  version '2.1'
  sha256 '2c51215bef97b0fc1fdc8b74e147dd13707d44129d37d029d3165ea8f3d3a1bd'

  # onflapp.github.io/blog/releases was verified as official when first introduced to the cask
  url 'https://onflapp.github.io/blog/releases/lincastor/LinCastor.zip'
  appcast 'https://onflapp.github.io/blog/releases/lincastor/appcast.xml'
  name 'LinCastor'
  homepage 'https://onflapp.wordpress.com/lincastor/'

  depends_on macos: '>= :sierra'

  app 'LinCastor.app'
end
