cask "getoutline" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1,260327nwr8ulsko"
  sha256 arm:   "f55ab3dc94fd39fbcb95366aff8ffc6283bd68664feaf7e67bc43fef99623ffb",
         intel: "2bae6b57d053f573e2a61b619e973023f9a47a44c03538f95c48a904ee29fd45"

  url "https://download.todesktop.com/2211128hgkdcltv/Outline%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg",
      verified: "download.todesktop.com/2211128hgkdcltv/"
  name "Outline"
  desc "Knowledge management tool"
  homepage "https://getoutline.com/"

  livecheck do
    url "https://download.todesktop.com/2211128hgkdcltv/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  app "Outline.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.generaloutline.outline.sfl*",
    "~/Library/Application Support/Outline",
    "~/Library/Logs/Outline",
    "~/Library/Preferences/com.generaloutline.outline.plist",
    "~/Library/Saved Application State/com.generaloutline.outline.savedState",
  ]
end
