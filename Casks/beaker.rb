cask :v1 => 'beaker' do
  version '1.1.2-1-g9161b57'
  sha256 '0dbaff9141b5cc8022fe0a1d129dcb8c3a6e37ca906f86e62304732962c446ec'

  # cloudfront.net is the official download host per the vendor homepage
  url "http://d299yghl10frh5.cloudfront.net/beaker-notebook-v#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
