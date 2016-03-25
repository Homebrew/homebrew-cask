cask 'franz' do
  version :latest
  sha256 :no_check
  
  # http://bit.ly/22yh2b6 was verified as official from the official site 
  url 'http://bit.ly/22yh2b6'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
