cask 'mongo-management-studio' do
  version '1.8.1'
  sha256 '4ce78980a3eb362f37f80b8a69df60441c664bd10f7378466a35a7bd74befe5a'

  url "http://packages.litixsoft.de/mms/#{version}/mms-v#{version}-community-darwin.pkg"
  name 'Litixsoft Mongo Management Studio'
  name 'MMS'
  homepage 'http://www.litixsoft.de/english/mms/'

  pkg "mms-v#{version}-community-darwin.pkg"

  uninstall pkgutil: 'de.litixsoft.mongoManagementStudio.MongoManagementStudio.pkg'
end
