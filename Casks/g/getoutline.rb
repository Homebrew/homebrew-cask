cask "getoutline" do
  arch arm: "arm64", intel: "x64"

  version "1.10.0,260918efgmywp4a"
  sha256 arm:   "76e8c55b6edac1b0f316d71a62203a8388de1b9adafce7bbc6871109757e12d6",
         intel: "0551b262fc8eaba5cc151698bd3dc8d0f1e8350416665637e9b41a9e391917b5"

  url "https://download.todesktop.com/2211128hgkdcltv/Outline%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg"
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

  depends_on macos: :monterey

  app "Outline.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.generaloutline.outline.sfl*",
    "~/Library/Application Support/Outline",
    "~/Library/Logs/Outline",
    "~/Library/Preferences/com.generaloutline.outline.plist",
    "~/Library/Saved Application State/com.generaloutline.outline.savedState",
  ]
end
