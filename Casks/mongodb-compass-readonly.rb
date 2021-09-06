cask "mongodb-compass-readonly" do
  version "1.28.4"
  sha256 "10a9969107f3cab7f602967501312c58d7fc4fb9a02c55e5fb6beb63d1d4f78e"

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
