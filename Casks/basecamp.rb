cask "basecamp" do
  arch arm: "_arm64"

  version "3,2.3.12"
  sha256 arm:   "f8f8aedf9e0fb02ed2eb7ad7f880f804e9a946869d02d8172969a98ae9f8fc3e",
         intel: "f3052b9fc2c856ebb506231c1c0e975f8aa82033418991202b5535b68d436488"

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
