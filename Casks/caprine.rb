cask 'caprine' do
  version '2.11.0'
  sha256 'f89dce60ecce7a8c5e0c8b049d460d3bf3b629779903c9f7a666b13c272665b1'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}.dmg"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '83b67cdaaf421bfbdfb0824f5f141607b3ea562c8b51affb0cf0bad39d63bc3a'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
