cask 'linkliar' do
  if MacOS.version <= :el_capitan
    version '1.1.3'
    sha256 '34c9baeaf1d6732c8ce9add689b281f9b71fddadd8f56cca614cba4f8c167962'
  else
    version '2.1.0'
    sha256 'ccb5d99a51a549367dde621102dd313f8da8cc46fed6a65d8e7bfdf4fb39c07a'
  end

  url "https://github.com/halo/LinkLiar/releases/download/#{version}/LinkLiar.app.zip"
  appcast 'https://github.com/halo/LinkLiar/releases.atom',
          checkpoint: '02149724f71d7ba213a3bec2fd8cd744b86ae3524bb12fd24208d21e8577f941'
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
