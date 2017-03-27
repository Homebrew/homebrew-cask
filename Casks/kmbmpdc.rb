cask 'kmbmpdc' do
  version '2.0.1'
  sha256 '6a0c00c1b7801465f203508926911d91d99e3fc25c4bebfebae3edaeb678cfdd'

  url "https://github.com/arttuperala/kmbmpdc/releases/download/v#{version}/kmbmpdc.tar.gz"
  appcast 'https://github.com/arttuperala/kmbmpdc/releases.atom',
          checkpoint: '876f0e09e6cadb5b30dcd75f292ad20f6c2dc19a6940717086431b52649244f2'
  name 'kmbmpdc'
  homepage 'https://github.com/arttuperala/kmbmpdc'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'kmbmpdc.app'
end
