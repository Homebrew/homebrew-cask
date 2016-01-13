cask 'exhaust' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Exhaust.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Exhaust',
          :sha256 => '3edb0f99e14815dd48a900e52b681c767887a78a23c209159625b38533fb98bc'
  name 'Exhaust'
  homepage 'https://mrgeckosmedia.com/applications/info/Exhaust'
  license :oss

  app 'Exhaust/Exhaust.app'
end
