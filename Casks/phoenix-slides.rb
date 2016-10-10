cask 'phoenix-slides' do
  version '1.4.2'
  sha256 'bde43c827972b8539198a0838e59e5d8f0fb3376a767eb04e467b584c832d239'

  url "http://blyt.net/phxslides/phoenix-slides-#{version.no_dots}.dmg"
  name 'Phoenix Slides'
  homepage 'http://blyt.net/phxslides'

  app 'Phoenix Slides.app'
end
