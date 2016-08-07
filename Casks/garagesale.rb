cask 'garagesale' do
  version '7.0.1'
  sha256 '45dba01712952fcb0f1946a56d87c5eb6e5eb6c359183d0a58c255138b0903ae'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'
  license :commercial

  app 'GarageSale.app'
end
