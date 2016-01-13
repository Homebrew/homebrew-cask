cask 'resolutionator' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/resolutionator'
  appcast 'https://manytricks.com/resolutionator/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Resolutionator'
  homepage 'https://manytricks.com/resolutionator/'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Resolutionator.app'
end
