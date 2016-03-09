cask 'multidoge' do
  version '0.1.7'
  sha256 '2785d79cce18d631dd8650e9eaa7fe10c084e4b65cc30c49c5a9d74e94ffcaf6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/langerhans/multidoge/releases/download/v#{version}/multidoge-#{version}.dmg"
  appcast 'https://github.com/langerhans/multidoge/releases.atom',
          checkpoint: '171414db90a857afe06592aa5c815d6f8f693177ebe4a7454f7a00b9ccad8e5a'
  name 'MultiDoge'
  homepage 'http://multidoge.org/'
  license :mit

  app 'MultiDoge.app'
end
