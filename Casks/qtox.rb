cask 'qtox' do
  version '1.8.1'
  sha256 '9fd22b6fe650e610f8f539a4d440a5cf95ff9e2c186efce94e8a5a486bed639f'

  # github.com/tux3/qTox was verified as official when first introduced to the cask
  url "https://github.com/tux3/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/tux3/qtox/releases.atom',
          checkpoint: '22955c01913765dc961d2959c3670ab0e37df11a1dd7b48909310f509436d962'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
