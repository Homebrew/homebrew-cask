cask "raycast" do
  on_big_sur :or_older do
    version "1.50.0"
    sha256 "F8BBD00D06636E3FE9F154FF69FF57C0A48A90A77AE58CDCC2B285F61A170A88"
    livcheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "1.52.0"
    sha256 "5E0DE474E0C1CB43D2677DC2FD87BD4AB6E7BAAE875496D216075DBA70100F52"
    livecheck do
      url "https://releases.raycast.com/releases"
      strategy :json do |json|
        json.map { |release| release["version"] }
      end
    end
  end

  url "https://releases.raycast.com/releases/#{version}/download?build=universal"
  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.com/"

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
