cask 'linkliar' do
  version '1.1.3'
  sha256 '34c9baeaf1d6732c8ce9add689b281f9b71fddadd8f56cca614cba4f8c167962'

  url "https://github.com/halo/LinkLiar/releases/download/#{version}/LinkLiar.app.zip"
  appcast 'https://github.com/halo/LinkLiar/releases.atom',
          checkpoint: '27742cdc16226bcd05fef563df4b55f7cf49fe0c169fab9c96ed3ad0ba189d90'
  name 'LinkLiar'
  homepage 'https://github.com/halo/LinkLiar'

  app 'LinkLiar.app'
end
