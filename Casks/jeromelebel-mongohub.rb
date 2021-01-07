cask "jeromelebel-mongohub" do
  version "3.1.4"
  sha256 :no_check

  url "https://mongohub.s3.amazonaws.com/MongoHub.zip",
      verified: "mongohub.s3.amazonaws.com/"
  name "MongoHub"
  desc "Native MongoDB client"
  homepage "https://github.com/jeromelebel/MongoHub-Mac"

  livecheck do
    url :homepage
    strategy :git
    regex(/^(\d+(?:\.\d+)*)$/i)
  end

  app "MongoHub.app"
end
