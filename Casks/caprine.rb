cask 'caprine' do
  version '1.6.0'
  sha256 'ef023688a73404833d64f78917c5d0c7ca3cfd2004d7da5b1bc11be051abbd99'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '0d09e0094c60a0d79fd25b791add59d1e4661dc9c2e31dd85242a2f20e637989'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  app 'Caprine.app'
end
