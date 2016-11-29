cask 'silo' do
  version '2.3.02'
  sha256 '7d84001382c3d12ad2f436fdb5572a60335a9e1dbac6505fd959fc776efaf365'

  url "https://nevercenter.com/download/Install_Silo_#{version.dots_to_underscores}_mac.zip"
  name 'Silo'
  homepage 'https://nevercenter.com/silo/'

  app "Silo #{version.sub(%r{^(\d+\.\d+).*}, '\1')}.app"
end
