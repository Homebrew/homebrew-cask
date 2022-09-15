cask "squash" do
  version "3.1.1,889"
  sha256 "7651342e48dac6cd4305f2fc34e928af79f8172916e25d1cd58d8b47a4c78f5e"

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
