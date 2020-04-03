cask 'comparemerge' do
  version '2.11z,107'
  sha256 'd1f669e3e7dffc3a77d193994cb4028ee5545aad20f8d36443b0f11ee8a0c74f'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge#{version.before_comma}#{version.after_comma}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge#{version.before_comma}#{version.after_comma}/CompareMerge#{version.before_comma}#{version.after_comma}.app"
end
