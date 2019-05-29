cask 'freeshuttercounter' do
  version '1.2.2'
  sha256 '37078acfe31b27584d258cb0d03ea48632a780f1aa9daf61b1d4bfdf7a4d4267'

  # github.com/orlv/freeshuttercounter was verified as official when first introduced to the cask
  url "https://github.com/orlv/freeshuttercounter/releases/download/#{version}/freeshuttercounter-#{version}.dmg"
  appcast 'https://github.com/orlv/freeshuttercounter/releases.atom'
  name 'FreeShutterCounter'
  homepage 'https://orlv.github.io/freeshuttercounter/'

  app 'FreeShutterCounter.app'
end
