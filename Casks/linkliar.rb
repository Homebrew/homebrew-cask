cask 'linkliar' do
  if MacOS.version <= :el_capitan
    version '1.1.3'
    sha256 '34c9baeaf1d6732c8ce9add689b281f9b71fddadd8f56cca614cba4f8c167962'
  else
    version '2.0.0'
    sha256 '0810a84a99ebd33d39d2b4b990d50df8caab796b36fe3c81a8b6fe159be276f8'
  end

  url "https://github.com/halo/LinkLiar/releases/download/#{version}/LinkLiar.app.zip"
  appcast 'https://github.com/halo/LinkLiar/releases.atom',
          checkpoint: '8a426993b3044f7d701dce456a90062ba2725db93299450559996ab3e8e074c9'
  name 'LinkLiar'
  homepage 'https://github.com/halo/LinkLiar'

  app 'LinkLiar.app'

  uninstall delete:    [
                         '/Library/Application Support/LinkDaemon',
                         '/Library/Application Support/LinkLiar',
                       ],
            launchctl: [
                         'io.github.halo.linkdaemon',
                         'io.github.halo.linkhelper',
                       ],
            quit:      'io.github.halo.LinkLiar'
end
