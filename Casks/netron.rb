cask 'netron' do
  version '1.4.5'
  sha256 '180b17815ebbfe90cd80559aeba1e88f02328ccaebaf9508f4131350df12cd7a'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '60ae59d88230368a8fa4185ef1dcadcbb0d8801023e71d29ea9dd4be5ac49ea1'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
