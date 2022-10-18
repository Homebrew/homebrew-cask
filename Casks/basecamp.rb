cask "basecamp" do
  arch arm: "_arm64"

  version "3,2.3.5"
  sha256 arm:   "adfdb4d99790d4cab594da29305b753b81711757c94cb5e23aed12dbaa65fbfa",
         intel: "7553020b9406cc59fa0d76b009a1721983e4c0c305f402c0b865d19a772d87b8"

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
