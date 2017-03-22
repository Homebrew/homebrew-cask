cask 'mongo-management-studio' do
  version '1.9.4'
  sha256 '402d2cb50605f98e8c942596bb9ba230580b6e21ffdb4790b9b1d5da69dacc46'

  url "http://packages.litixsoft.de/mms/#{version}/mms-v#{version}-community-darwin.pkg"
  name 'Litixsoft Mongo Management Studio'
  name 'MMS'
  homepage 'http://mms.litixsoft.de/'

  pkg "mms-v#{version}-community-darwin.pkg"

  uninstall pkgutil: 'de.litixsoft.mongoManagementStudio.MongoManagementStudio.pkg'
end
