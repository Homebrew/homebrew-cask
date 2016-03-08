cask 'garagesale' do
  version '6.9.5'
  sha256 'a4ab4d956f93fec438d3f3881b76e98e203a4c06ac6e46845180e35bcf9adae2'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'
  license :commercial

  app 'GarageSale.app'
end
