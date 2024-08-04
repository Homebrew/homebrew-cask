cask "find-my-ports" do
  version "1.4.0,KmCUblOLkztgxfVd3uaPti8c5i6BnM"
  sha256 "da35357bc51cc776854b60606f36258b70fb4d350ae7330f17f602beed285753"

  url "https://12tlni7vrjp0srft.public.blob.vercel-storage.com/find-my-ports/Find%20My%20Ports%20#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "12tlni7vrjp0srft.public.blob.vercel-storage.com/"
  name "find-my-ports"
  desc "Manager for open development ports and remote Vercel deployments"
  homepage "https://www.findmyports.com/"

  livecheck do
    url "https://www.findmyports.com/download"
    regex(%r{href=.*?/Find%20My%20Ports%20v?(\d+(?:\.\d+)*)[_-]([a-zA-Z0-9]+)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sonoma"

  app "Find My Ports.app"

  zap trash: [
    "~/Library/Application Scripts/com.benny.FindMyPorts-Helper",
    "~/Library/Application Support/Find My Ports",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/com.benny.FindMyPorts",
    "~/Library/Caches/com.benny.FindMyPorts",
    "~/Library/Containers/com.benny.FindMyPorts-Helper",
    "~/Library/HTTPStorages/com.benny.FindMyPorts",
    "~/Library/Preferences/com.benny.FindMyPorts.plist",
  ]
end
