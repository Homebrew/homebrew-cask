cask 'caprine' do
  version '1.7.0'
  sha256 '63fd671c29294eb8a6fc09c488eae3c0cfd83afef3e58023e9e719d63d1ad109'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'fdbbaee4a9364e122ca5e1445eaedce4d6ace8048c4fc783650242242d4d12c8'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  app 'Caprine.app'
end
