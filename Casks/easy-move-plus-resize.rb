cask 'easy-move-plus-resize' do
  version '1.2.0'
  sha256 '2060d10fedaf7e52b762645ef36716ce9a370d9d6895b7464faf7d79f3c0afd4'

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move.Resize.app.zip"
  appcast 'https://github.com/dmarcotte/easy-move-resize/releases.atom'
  name 'Easy Move+Resize'
  homepage 'https://github.com/dmarcotte/easy-move-resize'

  app 'Easy Move+Resize.app'
end
