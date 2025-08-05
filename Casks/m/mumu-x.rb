cask "mumu-x" do
  version "1.4.3,o9MCyhdQLC9HL3r1Yfks"
  sha256 "c8840523becdb36476fde1c44aec735f0cc5c0572f4361e7b3c406691c4e561c"

  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/116824/662730/#{version.csv.second}_Mumu%20X%20#{version.csv.first}.dmg",
      verified: "paddle.s3.amazonaws.com/fulfillment_downloads/116824/662730/"
  name "Mumu X"
  desc "Utilises GPT-3 AI powered synonyms to find emojis and symbols"
  homepage "https://getmumu.com/"

  livecheck do
    url "https://vendors.paddle.com/download/product/c589bd0d-8615-45e5-9edd-986cce462fe5"
    regex(%r{/([^/]+)_Mumu%20X%20(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "Mumu X.app"

  zap trash: [
    "~/Library/Application Scripts/com.wilbertliu.mumu-x-LaunchAtLoginHelper",
    "~/Library/Application Support/com.wilbertliu.mumu-x",
    "~/Library/Caches/com.wilbertliu.mumu-x",
    "~/Library/Containers/com.wilbertliu.mumu-x-LaunchAtLoginHelper",
    "~/Library/HTTPStorages/com.wilbertliu.mumu-x",
    "~/Library/HTTPStorages/com.wilbertliu.mumu-x.binarycookies",
    "~/Library/Preferences/com.wilbertliu.mumu-x.plist",
  ]
end
