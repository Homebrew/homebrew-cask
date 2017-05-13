cask 'logdna-cli' do
  version '1.1.1'
  sha256 '5ffda85b0e8dafb918cc5b9e9ae18e4372ae4e5a30a492f0669ddd738cc76f9b'

  # github.com/logdna/logdna-cli was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-cli/releases/download/#{version}/logdna-cli.pkg"
  appcast 'https://github.com/logdna/logdna-cli/releases.atom',
          checkpoint: 'd31bdf3541d359436ce5aedaed41f9c34bcad46e5b4b70cca361f6cc2d8dafcf'
  name 'LogDNA CLI'
  homepage 'https://logdna.com/'

  pkg 'logdna-cli.pkg'

  uninstall pkgutil: 'com.logdna.logdna-cli'
end
