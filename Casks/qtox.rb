cask 'qtox' do
  version '1.9.0'
  sha256 '5f4144c3659e7e56b6c9e6414acfc8e053d42e90d42e2ad4e62e9103ab8dd847'

  # github.com/tux3/qTox was verified as official when first introduced to the cask
  url "https://github.com/tux3/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/tux3/qtox/releases.atom',
          checkpoint: '25c0bfb96726ee382d587e787945ae543b3237246ed1e21063c1a8aa7752662c'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
