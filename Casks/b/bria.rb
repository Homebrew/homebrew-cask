cask "bria" do
  version "6.8.7,130266"
  sha256 "7859ef30105bfe1a629c889c354eae1f83bcbf2f7e3f579d7fbb0aab71fd722a"

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
  depends_on macos: :sonoma

  app "Bria.app"

  zap trash: [
    "~/Library/Application Support/com.CounterPath_Corporation.Bria",
    "~/Library/Caches/com.CounterPath_Corporation.Bria",
    "~/Library/HTTPStorages/com.CounterPath_Corporation.Bria",
    "~/Library/Preferences/com.CounterPath_Corporation.Bria.plist",
    "~/Library/WebKit/com.CounterPath_Corporation.Bria",
  ]
end
