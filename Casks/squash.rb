cask "squash" do
  version "3.1.2,898"
  sha256 "937771921091689ceac308a7fae2f011d5a98c4469881082adb2c898a57b0ce7"

  url "https://dl.devant-cdn.io/v1/app/4ad73d1f-7ab7-4f7f-b9df-8d2d906ef718/Squash-#{version.csv.second}.zip/Squash.zip",
      verified: "dl.devant-cdn.io/v1/app/4ad73d1f-7ab7-4f7f-b9df-8d2d906ef718/"
  name "squash"
  desc "Batch image processor, resizer, and converter"
  homepage "https://www.realmacsoftware.com/squash/"

  livecheck do
    url "https://update.devant.io/v1/feed/4ad73d1f-7ab7-4f7f-b9df-8d2d906ef718/"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true

  app "Squash.app"

  zap trash: [
    "~/Library/Application Scripts/com.realmacsoftware.squash3",
    "~/Library/Containers/com.realmacsoftware.squash3",
  ]
end
