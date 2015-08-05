cask :v1 => 'propresenter' do
  version '6.0.6_b14128'
  sha256 '4602f637a95460884793008853baacd7c01d08450bd641d249902949397d68d8'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          :sha256 => '7e95e9db63f4d0428c692735251c11e82b3940238247661806f3d60b472f5b49'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
