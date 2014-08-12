class Insertpic < Cask
  version '3.4'
  sha256 '346c414dec4eda07bdd67967b7376cc3f552a76cf86e00c4d4aa32d00c3bf970'

  url "https://s3.amazonaws.com/insertPic/InsertPic_#{version}.zip"
  homepage 'http://www.getinsertpic.com/'

  link 'InsertPic/InsertPic.app'
end
