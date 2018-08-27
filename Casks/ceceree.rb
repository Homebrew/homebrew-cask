cask 'ceceree' do
  version '1.2.3,70:1475928196'
  sha256 'c27f45e91dc76ce68a7b651861f972e264bf3eecf6185e3f473132214addd73b'

  # dl.devmate.com/com.appiculous.Ceceree was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.appiculous.Ceceree/#{version.after_comma.before_colon}/#{version.after_colon}/Ceceree-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.appiculous.Ceceree.xml'
  name 'Ceceree'
  homepage 'https://ceceree.com/'

  depends_on macos: '>= :yosemite'

  app 'Ceceree.app'
end
