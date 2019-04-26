cask 'pascom-client' do
  version '50.R318_5cd8b40'
  sha256 '621ec0cc4f5c5f09e94d617c6a8489598f7860f64fc3f59f425be9a4785cbece'

  url "https://download.pascom.net/release-archive/client/stable/pascom%20Client-#{version}.dmg"
  name 'pascom Client'
  homepage 'https://www.pascom.net/'

  depends_on macos: '>= :sierra'

  app 'pascom Client.app'
end
