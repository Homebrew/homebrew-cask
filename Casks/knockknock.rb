cask :v1 => 'knockknock' do
  version '1.6.0'
  sha256 '55740aa84853eaee4da13fb860ee319f5b41f88102377e53f633a49982e7fbcb'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  name 'KnockKnock'
  homepage 'https://objective-see.com/products/knockknock.html'
  license :gratis

  app 'KnockKnock.app'
end
