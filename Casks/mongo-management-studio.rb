cask :v1 => 'mongo-management-studio' do
  version '1.7.0'
  sha256 'c03b71c81e1e11b26313d0452969d5673bd9adc3b0064432af659dd1446d40ae'

  url "http://packages.litixsoft.de/mms/#{version}/mms-v#{version}-community-darwin.pkg"
  name 'Mongo Management Studio'
  name 'MMS'
  homepage 'http://www.litixsoft.de/english/mms/'
  license :freemium
  tags :vendor => 'Litixsoft'

  pkg "mms-v#{version}-community-darwin.pkg"

  uninstall :pkgutil => 'de.litixsoft.mongoManagementStudio.MongoManagementStudio.pkg'
end
