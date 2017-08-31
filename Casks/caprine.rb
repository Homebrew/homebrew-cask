cask 'caprine' do
  version '2.6.2'
  sha256 '466e51dbdf7c82284b0c3a81a50a363935eaac3268975a838581215e56ae991b'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '62ae797427421ec174267fe60eea203f9441efc07d857e7419fe247634d6dc0e'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
