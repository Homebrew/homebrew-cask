cask :v1 => 'silo' do
  version '2.3.02'
  sha256 '7d84001382c3d12ad2f436fdb5572a60335a9e1dbac6505fd959fc776efaf365'

  url "https://nevercenter.com/download/Install_Silo_#{version.gsub('.','_')}_mac.zip"
  homepage 'http://nevercenter.com/silo/'
  license :unknown    # todo: improve this machine-generated value
  container :nested => "Install_Silo_#{version.gsub('.','_')}_mac.dmg"

  app "Silo #{version.sub(%r{^(\d+\.\d+).*},'\1')}.app"
end
