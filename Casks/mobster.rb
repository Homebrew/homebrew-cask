cask 'mobster' do
  version '0.0.48'
  sha256 '47ab506e59d9a3491f06943baecd1b225277e472ce71bc5052efc9d152712233'

  url "https://github.com/dillonkearns/mobster/releases/download/v#{version}/Mobster-#{version}.dmg"
  appcast 'https://github.com/dillonkearns/mobster/releases.atom',
          checkpoint: '7ef8fc29d556691adc960218c740b1dbc3f657be1ee80e8c9a22842418e5513f'
  name 'Mobster'
  homepage 'https://github.com/dillonkearns/mobster/'

  app 'Mobster.app'
end
