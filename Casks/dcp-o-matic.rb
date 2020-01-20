cask 'dcp-o-matic' do
  version '2.14.23'
  sha256 '757a48bb25aaa621683029ee36c80f253157e58740a6d10a17274282364ce1b5'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
