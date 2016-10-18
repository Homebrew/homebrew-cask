cask 'controlplane' do
  if MacOS.version <= :snow_leopard
    version '1.2.3'
    sha256 '37f93d3a3a17a6e2f24447f0bc74c7e89ec1581ca52e5970960544858c86f909'
  else
    version '1.6.5'
    sha256 '446da8ecb194f4a4c9e9d0a1984f1476cfcb7202a3415b6d36eff063f97db47c'

    appcast 'http://www.controlplaneapp.com/appcast.xml',
            checkpoint: 'e8e01bc8f468b991f72c731ab00a15d676ca26a0ccbe75af237d17d223ac81a6'
  end

  url "http://www.controlplaneapp.com/download/#{version}"
  name 'ControlPlane'
  homepage 'http://www.controlplaneapp.com/'

  depends_on macos: '>= :snow_leopard'

  app 'ControlPlane.app'

  zap delete: '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
