cask "getoutline" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0,260416fn931b31i"
  sha256 arm:   "6aa6257a95e594a65a370532d04ebe8a53983d4accfc1a6921bb03ac035cd88f",
         intel: "8952696635378326aa14859406ee758209d6a22cbcdeced733e758f3e40727ac"

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
