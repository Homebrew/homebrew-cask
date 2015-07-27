cask :v1 => 'mongo-management-studio' do
  version '1.8.1'
  sha256 '4CE78980A3EB362F37F80B8A69DF60441C664BD10F7378466A35A7BD74BEFE5A'

  url "http://packages.litixsoft.de/mms/#{version}/mms-v#{version}-community-darwin.pkg"
  name 'Mongo Management Studio'
  name 'MMS'
  homepage 'http://www.litixsoft.de/english/mms/'
  license :freemium
  tags :vendor => 'Litixsoft'

  pkg "mms-v#{version}-community-darwin.pkg"

  uninstall :pkgutil => 'de.litixsoft.mongoManagementStudio.MongoManagementStudio.pkg'
end
