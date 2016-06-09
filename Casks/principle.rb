cask 'principle' do
  version '1.2.4'
  sha256 '3b4c06de1af222ae29dce785b5da3359f0f6a6ad2ed21b5496af807ebbfd7c33'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: '1667cb443fc10fefac6a0f500837d67dc9c61d4a42ee85b67b99f387645e5524'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
