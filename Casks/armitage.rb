cask 'armitage' do
  version '14.11.20'
  sha256 'b309fdef13c8a3a0d981ffc1ad2bfb4786a797f4e291dd4ef3bcc2806c1126f4'

  url "http://www.fastandeasyhacking.com/download/armitage#{version.gsub('.', '')}.dmg"
  name 'Armitage'
  homepage 'http://www.fastandeasyhacking.com/'
  license :bsd

  app 'Armitage.app'
end
