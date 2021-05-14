cask "mongodb-compass-readonly" do
  version "1.26.1"
  sha256 "922c4d72d7261d18a7a6fad646ca61964ae33fadf4404f3b326513f449f71306"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  name "MongoDB Compass Readonly"
  desc "Explore and manipulate your MongoDB data"
  homepage "https://www.mongodb.com/products/compass"

  livecheck do
    url "https://info-mongodb-com.s3.amazonaws.com/com-download-center/compass.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)\s*\(Readonly/i)
  end

  app "MongoDB Compass Readonly.app"
end
