cask :v1 => 'resolutionator' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/resolutionator'
  name 'Resolutionator'
  appcast 'http://manytricks.com/resolutionator/appcast.xml',
          :sha256 => 'a4dc116671f35b8b93cccfa77a3962fa6e934704a99793c5799a8c1bc907be1b'
  homepage 'http://manytricks.com/resolutionator/'
  license :gratis

  depends_on :macos => '>= :mountain_lion'

  app 'Resolutionator.app'
end
