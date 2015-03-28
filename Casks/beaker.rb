cask :v1 => 'beaker' do
  version '1.2-0-gbc54ec4'
  sha256 '95b054eda3ba6a422280488f4aa065af14af369fc9c2ba2043e852a2fe798326'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d299yghl10frh5.cloudfront.net/beaker-notebook-v#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
