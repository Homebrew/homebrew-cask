cask 'qtox' do
  version '1.12.1'
  sha256 '7620d78a8e35e91bc7b731ba4ad373466d8664a8da137d9cb7f0b5558f9a4a15'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom',
          checkpoint: '09de94d91a1d5db757deff6766bcad402d7513260935ebd1a534e27ebd621c97'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
