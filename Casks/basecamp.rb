cask "basecamp" do
  arch arm: "_arm64"

  version "3,2.3.8"
  sha256 arm:   "c15bf207ee8cf4525631cad322700df02690ef8a95cf64c242674afe72608fdb",
         intel: "3b7bdb06c7ec63da72fafe20bef0acd10c8e71f548e356a6a3537dbaba524088"

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

  app "Basecamp #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Basecamp*",
    "~/Library/Preferences/com.basecamp.basecamp*.plist",
    "~/Library/Saved Application State/com.basecamp.basecamp*.savedState",
  ]
end
