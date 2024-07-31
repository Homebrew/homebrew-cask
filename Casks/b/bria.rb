cask "bria" do
  version "6.7.2.1,124831"
  sha256 "88ab5b345e06293d7d23b114da154f089c984659328ee353207b8d1d3f21dc85"

  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "counterpath.s3.amazonaws.com/"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  livecheck do
    url "https://www.counterpath.com/downloads/Bria6ForMac.php"
    regex(/Bria_(\d+(?:\.\d+)+)_(\d+)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
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
