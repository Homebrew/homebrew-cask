cask 'multidoge' do
  version '0.1.7'
  sha256 '2785d79cce18d631dd8650e9eaa7fe10c084e4b65cc30c49c5a9d74e94ffcaf6'

  # github.com/langerhans/multidoge was verified as official when first introduced to the cask
  url "https://github.com/langerhans/multidoge/releases/download/v#{version}/multidoge-#{version}.dmg"
  appcast 'https://github.com/langerhans/multidoge/releases.atom',
          checkpoint: '8b9f30e974455622cc1604657bfb566794775d6e75c2efe33d88a074fb1f3bcc'
  name 'MultiDoge'
  homepage 'http://multidoge.org/'

  app 'MultiDoge.app'
end
