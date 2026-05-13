cask "getoutline" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0,260513d06ppernw"
  sha256 arm:   "156793f14b30d6eff78bd6f95156e964d822885b1ea250770d5fdedca3f9e35f",
         intel: "a9a5f7df7482e86dcb9e8dbe883b7dd3e32d687cd07fb42e662b9f87d87370f6"

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
