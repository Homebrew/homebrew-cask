cask 'collabshot' do
  version :latest
  sha256 :no_check

  url 'https://api.collabshot.com/desktop/latest/mac'
  name 'Collabshot'
  homepage 'https://www.collabshot.com/'

  app 'Collabshot.app'
end
