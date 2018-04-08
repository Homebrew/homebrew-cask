cask 'ao' do
  version '5.4.0'
  sha256 '6068ca6a52c812d5744c5095c24ac43af17180f4823a575a01685d427d7835f6'

  url "https://github.com/klauscfhq/ao/releases/download/v#{version}/ao-macos-#{version}.dmg"
  appcast 'https://github.com/klauscfhq/ao/releases.atom',
          checkpoint: '12d547bfc877cbfb5d92315b2e1a4e5a87a48961c15863cbeaaae437d640edc5'
  name 'Ao'
  homepage 'https://github.com/klauscfhq/ao'

  app 'Ao.app'
end
