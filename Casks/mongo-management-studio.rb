cask :v1 => 'mongo-management-studio' do
  version '1.5.0'
  sha256 'a5bfd413ed7280b21ef353314da8ef4acac78077d872b292e91d9816fdbf79c7'

  url "http://packages.litixsoft.de/mms/#{version}/mms-v#{version}-community-darwin.pkg"
  name 'Mongo Management Studio'
  name 'MMS'
  homepage 'http://www.litixsoft.de/english/mms/'
  license :freemium
  tags :vendor => 'Litixsoft'

  pkg "mms-v#{version}-community-darwin.pkg"

  uninstall :pkgutil => 'de.litixsoft.mongoManagementStudio.MongoManagementStudio.pkg'
end
