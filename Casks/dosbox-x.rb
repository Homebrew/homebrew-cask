cask 'dosbox-x' do
  version '0.82.24,20191130163446'
  sha256 '60fadf3cca2164a2cb432c3a778ed38f4bd74d8ebbfbf13d36f6ef6c241776b5'

  # github.com/joncampbell123/dosbox-x was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'https://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
