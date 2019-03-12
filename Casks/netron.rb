cask 'netron' do
  version '2.9.4'
  sha256 '5cbae9ac1d88183d3912d46e821e8fff171126730ca7cb839f2dafcf132e8f15'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
