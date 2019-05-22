cask 'affinity-publisher-beta' do
  version '1.7.0.337'
  sha256 'd707474487e63a815226faf98a5d83faa356e37bde6a39a0be260c60d8daef3b'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/affinity-beta/download/Affinity-Publisher-Beta-#{version}.dmg"
  appcast 'https://forum.affinity.serif.com/index.php?/forum/57-report-bugs-in-publisher-beta-on-mac/'
  name 'Serif Affinity Publisher'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Publisher Beta.app'
end
