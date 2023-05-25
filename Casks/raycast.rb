cask "raycast" do
  
  if MacOS.version <= :big_sur
    version "1.50.0"
    sha256 "F8BBD00D06636E3FE9F154FF69FF57C0A48A90A77AE58CDCC2B285F61A170A88"
    depends_on macos: ">= :big_sur"
  else
    version "1.52.0"
    sha256 "5E0DE474E0C1CB43D2677DC2FD87BD4AB6E7BAAE875496D216075DBA70100F52"
    depends_on macos: ">= :monterey"
  end

  url "https://releases.raycast.com/releases/#{version}/download?build=universal"
  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.com/"

  livecheck do
    url :url
    regex(/Raycast[._-]v?(\d+(?:\.\d+)+)(?:[._-](\h+))[._-]universal\.dmg/i)
    strategy :header_match
  end

  auto_updates true

  app "Raycast.app"

  uninstall quit: "com.raycast.macos"

  zap trash: [
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Cookies/com.raycast.macos.binarycookies",
    "~/Library/Preferences/com.raycast.macos.plist",
  ]
end
