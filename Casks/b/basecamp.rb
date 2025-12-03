cask "basecamp" do
  arch arm: "_arm64"

  sha256 arm:   "434e37465b4959f468f797fd9eaf3b493e8556763bfc7fb3a2c0ce15eed7b5cb",
         intel: "2dff1f9a9abb16f1e17e40c83d8fca4381dbdabd8891ac32c04b7cd6717c37a6"

  on_arm do
    version "3,2.5.2"
  end
  on_intel do
    version "3,2.5.1"
  end

  url "https://basecamp.com/desktop/mac#{arch}/basecamp#{version.major}-#{version.csv.second}.zip",
      verified: "basecamp.com/desktop/"
  name "Basecamp"
  desc "All-In-One Toolkit for Working Remotely"
  homepage "https://3.basecamp-help.com/"

  livecheck do
    url "https://basecamp.com/desktop/mac#{arch}/updates.json"
    regex(/basecamp(\d*)[_-]v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      (match.length > 2) ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Basecamp.app"

  zap trash: [
    "~/Library/Application Support/Basecamp*",
    "~/Library/Preferences/com.basecamp.basecamp*.plist",
    "~/Library/Saved Application State/com.basecamp.basecamp*.savedState",
  ]
end
