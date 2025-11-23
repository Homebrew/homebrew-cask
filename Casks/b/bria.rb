cask "bria" do
  version "6.8.4,128270"
  sha256 "2ad8783760a007a6946f5128710b44ba7c6ba8b8886dbb6343407efcbfdd2ebe"

  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "counterpath.s3.amazonaws.com/"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  livecheck do
    url "https://www.counterpath.com/downloads/Bria6ForMac.php"
    regex(/Bria_(\d+(?:\.\d+)+)_(\d+)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bria.app"

  zap trash: [
    "~/Library/Application Support/com.CounterPath_Corporation.Bria",
    "~/Library/Caches/com.CounterPath_Corporation.Bria",
    "~/Library/HTTPStorages/com.CounterPath_Corporation.Bria",
    "~/Library/Preferences/com.CounterPath_Corporation.Bria.plist",
    "~/Library/WebKit/com.CounterPath_Corporation.Bria",
  ]
end
