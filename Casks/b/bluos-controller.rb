cask "bluos-controller" do
  version "4.4.1,2024,07"
  sha256 "dc748fede7a34a610772f1bd81578d94e5b7be311590b2d05e0f700553935cbe"

  url "https://content-bluesound-com.s3.amazonaws.com/uploads/#{version.csv.second}/#{version.csv.third}/BluOS-Controller-#{version.csv.first}-MacOS.zip",
      verified: "content-bluesound-com.s3.amazonaws.com/uploads/"
  name "BluOS Controller"
  desc "Manage audio systems"
  homepage "https://www.bluesound.com/"

  livecheck do
    url "https://www.bluesound.com/downloads/"
    regex(%r{uploads/(\d+)/(\d+)/BluOS[._-]Controller[._-]v?(\d+(?:\.\d+)+)[._-]MacOS\.zip}i)
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

  caveats do
    requires_rosetta
  end
end
