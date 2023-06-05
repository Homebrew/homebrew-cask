cask "bluos-controller" do
  version "3.20.5,2023,02"
  sha256 "12d192b53f554b6339319257b6e1d39b5fd08138962f53015cf8401957f06c58"

  url "https://content-bluesound-com.s3.amazonaws.com/uploads/#{version.csv.second}/#{version.csv.third}/BluOS-Controller-#{version.csv.first}.dmg",
      verified: "content-bluesound-com.s3.amazonaws.com/uploads/"
  name "BluOS Controller"
  desc "Manage audio systems"
  homepage "https://www.bluesound.com/"

  livecheck do
    url "https://www.bluesound.com/downloads"
    regex(%r{uploads/(\d+)/(\d+)/BluOS[._-]Controller[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "BluOS Controller.app"

  zap trash: [
    "~/Library/Application Support/BluOS Controller",
    "~/Library/Logs/BluOS Controller",
    "~/Library/Preferences/com.bluesound.bluos.plist",
    "~/Library/Saved Application State/com.bluesound.bluos.savedState",
  ]
end
