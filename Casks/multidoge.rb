cask 'multidoge' do
  version '0.1.7'
  sha256 '648751ce2598d838b07b65dd5ff3e4136b0c369ddc38efedd9329a63365506f5'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/langerhans/multidoge/releases/download/v#{version}/multidoge-#{version}.dmg"
  appcast 'https://github.com/langerhans/multidoge/releases.atom',
          checkpoint: 'e53665cab01a3c7751ec2c0f0aceb2fd15623e2627252f8260a91679f586d785'
  name 'MultiDoge'
  homepage 'http://multidoge.org/'
  license :mit

  app 'MultiDoge.app'
end
