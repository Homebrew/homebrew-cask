cask 'caprine' do
  version '1.5.0'
  sha256 'a1a82622bab81c0418f06ee54267775eda2d5edf6c0191e5b96042b599eec7de'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'a32978ae893fc011f172d68d3f86f3ff16953b2cf9358c3e23de40d5f394d2b7'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
