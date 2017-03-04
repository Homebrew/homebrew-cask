cask 'iordning' do
  version '6.0.63'
  sha256 '68bc19dcbbb5485ab2505a5c9c38114be06bd1a8e0a00f71cb6fe6cc96ee2944'

  url "https://www.aderstedtsoftware.com/downloads/iOrdning#{version.major}.zip"
  appcast "https://www.aderstedtsoftware.com/economacs/v#{version.major}_appcast.xml",
          checkpoint: '60d2225ba97b22fd1b99f3409cd8c4f4130b55f0ea1f2524ea1e648987dae7e9'
  name 'iOrdning'
  name 'Economacs'
  homepage 'https://www.aderstedtsoftware.com/iordning/'

  app 'iOrdning.app'
end
