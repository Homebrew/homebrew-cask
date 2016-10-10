cask 'logdna-cli' do
  version '1.1.0'
  sha256 '7327850b163588aa2df0cba97c3a87b39588196ba908bb80be57f76f72f75376'

  # github.com/logdna/logdna-cli was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-cli/releases/download/#{version}/logdna-cli.pkg"
  appcast 'https://github.com/logdna/logdna-cli/releases.atom',
          checkpoint: '62a4bbdf4d9748db1a52a61e106cd246eea39fd2abb1291186a546eb189f90a3'
  name 'LogDNA CLI'
  homepage 'https://logdna.com/'

  pkg 'logdna-cli.pkg'

  uninstall pkgutil: 'com.logdna.logdna-cli'
end
