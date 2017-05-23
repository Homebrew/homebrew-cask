cask 'nuimo' do
  version '1.8.0'
  sha256 '64b34868da70b288ce319d88c5c9273dcf2279be32a1e0e847b72e2ac4034721'

  url "https://files.senic.com/nuimo-app-osx-#{version.dots_to_hyphens}.zip"
  appcast 'https://files.senic.com/nuimo-app-osx-appcast.xml',
          checkpoint: '92586dec08babdfa7dbce2bbc22a8e113eb6dd368463485543c17a0abc628b36'
  name 'Nuimo'
  homepage 'https://www.senic.com/en/app'

  auto_updates true

  app 'Nuimo.app'
end
