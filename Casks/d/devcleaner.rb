cask "devcleaner" do
  version "2.8.0-511"
  sha256 "52714f13cbd0f4bd41b6f45acfc9ab7f179fe2bbe64dc5dbe497b084f27389b0"

  url "https://github.com/vashpan/xcode-dev-cleaner/releases/download/#{version.sub(/-\d+/, "")}/DevCleaner-#{version}.zip"
  name "DevCleaner"
  desc "Reclaim storage used for Xcode caches"
  homepage "https://github.com/vashpan/xcode-dev-cleaner"

  livecheck do
    url :url
    regex(/^DevCleaner[._-]v?(\d+(?:[.-]\d+)+)\.zip$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :sonoma"

  app "DevCleaner.app"

  zap trash: [
    "~/Library/Application Scripts/com.oneminutegames.XcodeCleaner",
    "~/Library/Application Support/CrashReporter/DevCleaner*.plist",
    "~/Library/Containers/com.oneminutegames.XcodeCleaner",
  ]
end
