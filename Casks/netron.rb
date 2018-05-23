cask 'netron' do
  version '1.8.0'
  sha256 'fdd667f89ae11dc28b406b6c1f0f89fb3ed7811fa20edeab300a09cce6bef683'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'fd65aad341eb6f1da472cb0091546a6c33fe880893abc421c056528f7c6a4a37'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
