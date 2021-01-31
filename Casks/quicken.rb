cask "quicken" do
  version "6.1.0,601.37882.100"
  sha256 "a540106b1131d18c9e6fe013c069fd9d3d90ea8ab9196eddbbeae1a7c1bba1c1"

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.after_comma}/Quicken-#{version.after_comma}.zip"
  name "Quicken"
  desc "Personal finance mananger"
  homepage "https://www.quicken.com/mac"

  livecheck do
    url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Quicken.app"

  zap trash: [
    "~/Library/Preferences/com.quicken.Quicken.plist",
    "~/Library/Application Support/Quicken",
  ]
end
