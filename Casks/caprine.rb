cask 'caprine' do
  version '2.0.0'
  sha256 '7153bf40ec2b4202b9c93e300f666821df3b3b5b42f1a78f2c79efeb925745b3'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '6f37dffea18bf7589886abcdc36b8463393a981f12a4e0c23727fe4e9f8195f6'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
