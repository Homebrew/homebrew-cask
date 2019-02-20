cask 'netron' do
  version '2.9.0'
  sha256 '3f66f4def9ac2386e86daba4b833b75dd3b85308bcbfeed8030ca0578446c42b'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
