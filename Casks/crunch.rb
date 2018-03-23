cask 'crunch' do
  version '0.10.0'
  sha256 '58b25a97f5bb797c270711f54989ce1bea1e3ed476aa4f6ce4865b0b3ffa650a'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: '508addbe4f2021aa0614a66b93a261d5c1a6c3ebddf68884e21d9bd3e004d55f'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  app 'Crunch.app'
end
