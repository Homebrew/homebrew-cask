cask 'dosbox-x' do
  version '0.82.22,20190930195458'
  sha256 '96f90ba7b5bad6f9633b22e1dc94c5daeb2b0cf7acb9258f512bf67ee43cc842'

  # github.com/joncampbell123/dosbox-x was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'https://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
