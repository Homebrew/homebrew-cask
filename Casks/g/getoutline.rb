cask "getoutline" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1,240227x80f4vacd"
  sha256 arm:   "5178207301ee32ff0540dba762af9a8c64d61c42bbc64bdfbee4f058e9953ad4",
         intel: "8409afc5d0433084d9aacbd6decb3bb387c343a75aa37acdf5ba29d145a229f6"

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

  depends_on macos: ">= :catalina"

  app "Outline.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.generaloutline.outline.sfl*",
    "~/Library/Application Support/Outline",
    "~/Library/Logs/Outline",
    "~/Library/Preferences/com.generaloutline.outline.plist",
    "~/Library/Saved Application State/com.generaloutline.outline.savedState",
  ]
end
