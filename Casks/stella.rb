cask 'stella' do
  version '5.0.1'
  sha256 'e8339f66b23a18eb73af304c6ba55740fa09a7e248fad87ba23f63e1336c351c'

  # github.com/stella-emu/stella/releases/download was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom',
          checkpoint: '611f56c8e6171c42253e5b4f7a134f5445f1cb712297af18d4c366894c2d4472'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
