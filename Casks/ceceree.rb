cask 'ceceree' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.appiculous.Ceceree was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.appiculous.Ceceree/Ceceree.zip'
  name 'Ceceree'
  homepage 'https://ceceree.com/'

  depends_on macos: '>= :yosemite'

  app 'Ceceree.app'
end
