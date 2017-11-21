cask 'reactotron' do
  version '1.13.0'
  sha256 '8c19b5c306430b09600c673afd2342617590940aaaea787b8eb751b842c6e9ac'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom',
          checkpoint: '35f4d4263a32f2c963565f45e529b9621b84e209d28e9ad58146c92df9f10f54'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap trash: [
               '~/Library/Application Support/Reactotron',
             ]
end
