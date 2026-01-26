cask "tap-forms" do
  version "5.3.45,sVRdq8QqvjZ3jBJUQNwZ"
  sha256 "82a6e945b233e1202373393919e97dca891fc5a0f472ff2ebcc71cefacbaf991"

  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/9234/503174/#{version.csv.second}_Tap%20Forms%20Install%20#{version.csv.first}.dmg",
      verified: "paddle.s3.amazonaws.com/"
  name "Tap Forms 5"
  desc "Helps to organise important files in one place"
  homepage "https://www.tapforms.com/"

  livecheck do
    url "https://vendors.paddle.com/download/product/503174"
    regex(/([a-z0-9]+)[._-]Tap%20Forms%20Install%20v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "Tap Forms Mac #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapzapp.tapforms-mac",
    "~/Library/Containers/com.tapzapp.tapforms-mac",
  ]

  caveats do
    requires_rosetta
  end
end
