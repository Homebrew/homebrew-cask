cask "squash" do
  version "3.1.0,866"
  sha256 "e42e1381bddfc3cc2d1180446ed94b22a61c7bc6fb9dd51437ec8b8aec32526b"

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
