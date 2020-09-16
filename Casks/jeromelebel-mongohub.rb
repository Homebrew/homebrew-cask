cask "jeromelebel-mongohub" do
  version "3.1.4"
  sha256 "9fdeb27aa87004f6c9c35c7736836ad952f11e1d678cda6e6215a8bdd617bbd3"

  # mongohub.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://mongohub.s3.amazonaws.com/MongoHub.zip"
  appcast "https://github.com/jeromelebel/MongoHub-Mac/releases.atom"
  name "MongoHub"
  desc "Native MongoDB client"
  homepage "https://github.com/jeromelebel/MongoHub-Mac"

  app "MongoHub.app"
end
