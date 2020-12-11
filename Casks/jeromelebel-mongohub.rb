cask "jeromelebel-mongohub" do
  version "3.1.4"
  sha256 :no_check

  # mongohub.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://mongohub.s3.amazonaws.com/MongoHub.zip"
  appcast "https://github.com/jeromelebel/MongoHub-Mac/releases.atom"
  name "MongoHub"
  desc "Native MongoDB client"
  homepage "https://github.com/jeromelebel/MongoHub-Mac"

  app "MongoHub.app"
end
