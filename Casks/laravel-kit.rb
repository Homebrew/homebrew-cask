cask 'laravel-kit' do
  version '1.2.0'
  sha256 '7836d5dffbee19efb6d5b86d817045fecf84106c553160461add4226adf28722'

  url "https://github.com/tarequemdhanif/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip"
  appcast 'https://github.com/tarequemdhanif/laravel-kit/releases.atom',
          checkpoint: '4d87a5800107e917d622e0bbd25bf3af6c26fc67a9107490eb21ab5e1b63df07'
  name 'Laravel Kit'
  homepage 'https://github.com/tarequemdhanif/laravel-kit'

  auto_updates true

  app 'Laravel Kit.app'
end
