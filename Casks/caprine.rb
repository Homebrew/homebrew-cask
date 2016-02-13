cask 'caprine' do
  version '1.0.0'
  sha256 '7326caa37fbdd6d26b2a76c4c7bfb7d1c8a9f0c09818215a9ef14817d2cc32f3'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'a036fbcfc07763d7577d4f99ef4da3a194ca2129a1ec4a0770995cdc4e59abe1'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
