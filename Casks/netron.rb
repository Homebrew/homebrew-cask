cask 'netron' do
  version '1.2.0'
  sha256 '6f7b7678f33460c53801769b770c24110ac405bf96767d6eb912d16d023a5381'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '7e6fb4b2b2b8fc98c805347cdf5d43c4c897ce0242c7f67a198676c9331e08d1'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
