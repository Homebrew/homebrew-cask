cask 'kodelife' do
  version '0.5.5.0'
  sha256 '18fd32fe9c5f7f4a756923c1b7d4d7e562ca54014c1edfbb8673f5a2cc38ada1'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex',
          checkpoint: 'c24d0d5e025d9a2cf66abc0092a75ae9940df89e8909f16b169ffa06fe6698db'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
