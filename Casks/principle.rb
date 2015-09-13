cask :v1 => 'principle' do
  version '0.0.79'
  sha256 'd61993ccdc7b0f960d328f34fe38bd70dfa62fec2b4b5e788e6af3377fa07dd7'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/13897407/Principle_Latest.zip#webfreetrial'
  name 'Principle'
  homepage 'http://principleformac.com'
  license :commercial

  app 'Principle.app'
end
