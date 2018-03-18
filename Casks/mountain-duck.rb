cask 'mountain-duck' do
  version '2.3.1.9206'
  sha256 'bff5e5fe3d2931dd901ad6c8b30a925655452c2015cc92aabdfcd42d3dcac017'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '78e74f97c3c3a0278457639af4d41022a24f3f321b571cdd7774c15dbd4fef59'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
