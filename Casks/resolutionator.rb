cask 'resolutionator' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/resolutionator'
  appcast 'https://manytricks.com/resolutionator/appcast.xml',
          :sha256 => 'daf1d476cf2235d77b3f0303b5f2672cafff7b713914a50a28d68c6747fece2f'
  name 'Resolutionator'
  homepage 'https://manytricks.com/resolutionator/'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Resolutionator.app'
end
