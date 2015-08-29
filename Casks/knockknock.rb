cask :v1 => 'knockknock' do
  version '1.5.0'
  sha256 'c0b4c3d8d7fb9981998f6b305aff792b3120c27c978c77cb7484f9a7799f793a'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  name 'KnockKnock'
  homepage 'https://objective-see.com/products/knockknock.html'
  license :gratis

  app 'KnockKnock.app'
end
