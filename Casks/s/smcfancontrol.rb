cask "smcfancontrol" do
  version "2.6"
  sha256 "7662058e618537eb466307e3b12e540b857e61392646a5b09df51bec9ad6da38"

  url "https://github.com/hholtmann/smcFanControl/releases/download/#{version}/smcfancontrol_#{version.dots_to_underscores}.zip"
  name "smcFanControl"
  desc "Sets a minimum speed for built-in fans"
  homepage "https://github.com/hholtmann/smcFanControl"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "smcfancontrol@beta"

  app "smcFanControl.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eidac.smcfancontrol#{version.major}.sfl*",
    "~/Library/Application Support/smcFanControl",
    "~/Library/Caches/com.eidac.smcFanControl#{version.major}",
    "~/Library/Preferences/com.eidac.smcFanControl#{version.major}.plist",
  ]

  caveats do
    requires_rosetta
  end
end
