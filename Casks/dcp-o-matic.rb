cask 'dcp-o-matic' do
  version '2.12.10'
  sha256 '6d05007d01c4073bc2248cfd9ee38061d364598cfa8b4869dc8bc387f51aafa3'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
