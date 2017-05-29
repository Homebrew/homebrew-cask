cask 'logdna-cli' do
  version '1.2.0'
  sha256 '6655f39122ec9497f9613099951fe8d2735b40ba12fe378f28687f4b68ac11e9'

  # github.com/logdna/logdna-cli was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-cli/releases/download/#{version}/logdna-cli.pkg"
  appcast 'https://github.com/logdna/logdna-cli/releases.atom',
          checkpoint: '1ff99ed137d57f571581482c8b625b447a7adaf62cd1095874a23d8ecca12dc6'
  name 'LogDNA CLI'
  homepage 'https://logdna.com/'

  pkg 'logdna-cli.pkg'

  uninstall pkgutil: 'com.logdna.logdna-cli'
end
