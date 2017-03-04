cask 'otx' do
  version '1.7,b566'
  sha256 '116a9441cfed31c28e0f9b3aa26b82f2a7186d3c8ec4afd2173c2ad460e51ab8'

  url "https://github.com/x43x61x69/otx/releases/download/v#{version.before_comma}/otx_#{version.after_comma}.zip"
  appcast 'https://github.com/x43x61x69/otx/releases.atom',
          checkpoint: 'd15c0290c67946c961ad885829d82d9e455cbd94e1be3892120711f4d89778e1'
  name 'otx'
  homepage 'https://github.com/x43x61x69/otx'

  auto_updates true

  app 'otx.app'
  binary 'otx'
end
