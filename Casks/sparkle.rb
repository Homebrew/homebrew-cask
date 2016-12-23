cask 'sparkle' do
  version '1.15.1'
  sha256 'a436b3ff7dd0e5bb97ae3dd38ad8bd0f9ded782820e5b526340818e477e2f49d'

  # github.com/sparkle-project/Sparkle was verified as official when first introduced to the cask
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom',
          checkpoint: '6a67ee9ba3a6921d22c378847d1747117e7c17ce43f49b45832423dd6ac1b3c4'
  name 'Sparkle'
  homepage 'https://sparkle-project.org/'

  app 'Sparkle Test App.app'
end
