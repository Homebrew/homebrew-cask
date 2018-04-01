cask 'overkill' do
  version '1.0'
  sha256 'e088b8a99ef76cffa56ec82b2f36e1461b974944de3d24996a43f503eb6c7606'

  url "https://github.com/KrauseFx/overkill-for-mac/releases/download/#{version}/Overkill.zip"
  appcast 'https://github.com/KrauseFx/overkill-for-mac/releases.atom',
          checkpoint: '8bb89fe8577cf430d33bc21e4c056c6cda3e306e1254da7c1bd4288d3e9f0dce'
  name 'Overkill'
  homepage 'https://github.com/KrauseFx/overkill-for-mac'

  app 'Overkill.app'

  zap trash: '~/Library/Preferences/com.krausefx.Overkill.plist'
end
