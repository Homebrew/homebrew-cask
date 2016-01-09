cask 'principle' do
  version '0.0.81'
  sha256 '640afca3255a5e1938bf53e4944f37a8116898a4de873a6fdad4e4322a6ddbd7'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          :sha256 => 'a3dd29efb139c3a1a9fbc39c6d9b16ff4146e9385ddd379eaf8f905ed6da5ad0'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
