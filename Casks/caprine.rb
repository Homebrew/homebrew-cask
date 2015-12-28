cask 'caprine' do
  version '0.5.1'
  sha256 'ffa2530bfcf1ff9086aec0cead86af2f5fd08a4f047d46c15eadd9199e5924ff'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          :sha256 => '667e65db88cd4ef05f1a406567fcd84d8feff119220081526a85a06e82f6b236'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
