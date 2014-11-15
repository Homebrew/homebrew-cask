cask :v1 => 'cert-quicklook' do
  version '3'
  sha256 '9fd0508ffb1731b52e6a0b5a9a168ede62b1ad17b591bc42c66efa628877e540'

  url "https://cert-quicklook.googlecode.com/files/CertQuickLook-v#{version}.qlgenerator.zip"
  homepage 'https://code.google.com/p/cert-quicklook/'
  license :oss

  qlplugin 'CertQuickLook.qlgenerator'
end
