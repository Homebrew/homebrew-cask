cask 'linkliar' do
  version '1.1.3'
  sha256 '34c9baeaf1d6732c8ce9add689b281f9b71fddadd8f56cca614cba4f8c167962'

  url "https://github.com/halo/LinkLiar/releases/download/#{version}/LinkLiar.app.zip"
  appcast 'https://github.com/halo/LinkLiar/releases.atom',
          checkpoint: '4d7b2d9b6cb988ba6824f1bf0a41ec466c6f737808a03ef5611feb872cc1be17'
  name 'LinkLiar'
  homepage 'https://github.com/halo/LinkLiar'

  app 'LinkLiar.app'
end
