cask :v1 => 'principle' do
  version '0.0.79'
  sha256 'd61993ccdc7b0f960d328f34fe38bd70dfa62fec2b4b5e788e6af3377fa07dd7'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.gsub('.','_')}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          :sha256 => '71620cf941efd85e97a414f97e8ce531c487e690617aef6b52a396eaf3f9c092'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
