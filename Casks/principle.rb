cask 'principle' do
  version '1.1.1'
  sha256 'b127b6b78500341ad51f2adedd536c2a5a18166736dbdead0f584ad615e620d6'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: 'c75dcd49b00698943f55712c794683088f2541c861899aa0af786240b8e01fa8'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
