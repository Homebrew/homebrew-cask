cask :v1 => 'principle' do
  version '0.0.80'
  sha256 '2d6ce166a974a2668e7327daa66137506bc7b67733bee136c1137515001ad1bc'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.gsub('.','_')}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          :sha256 => '230fcd3610a9ccbe327ee4ebffb27b3fa2d88e915317404019b93070ae78de3d'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
