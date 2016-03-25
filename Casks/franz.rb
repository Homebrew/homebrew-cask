cask 'franz' do
  version :latest
  sha256 :no_check

  #This bit.ly link comes from the official site 
  url 'http://bit.ly/22yh2b6'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :free

  app 'Franz.app'
end
