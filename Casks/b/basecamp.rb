cask "basecamp" do
  arch arm: "_arm64"

  version "3,2.3.14"
  sha256 arm:   "6d545f87121acfcc731cd4915e07b4f5701f0706e7ee57023160eebb363faaff",
         intel: "58684eee2d30b9c3211276a8e961638de4c6f2da9a7fff241492b8a264c88ed9"

  url "https://bc#{version.major}-desktop.s3.amazonaws.com/mac#{arch}/basecamp#{version.major}-#{version.csv.second}.zip",
      verified: "bc3-desktop.s3.amazonaws.com/"
  name "Basecamp"
  desc "All-In-One Toolkit for Working Remotely"
  homepage "https://basecamp.com/help/#{version}/guides/apps/mac"

  livecheck do
    url "https://bc#{version.major}-desktop.s3.amazonaws.com/mac#{arch}/updates.json"
    strategy :page_match do |page|
      minor_version = JSON.parse(page)["version"]
      major_version = page.match(/basecamp(\d)/i)
      next if major_version.blank? || minor_version.blank?

      "#{major_version[1]},#{minor_version}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Basecamp #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Basecamp*",
    "~/Library/Preferences/com.basecamp.basecamp*.plist",
    "~/Library/Saved Application State/com.basecamp.basecamp*.savedState",
  ]
end
