cask "gitfox" do
  version "4.0.2,10616"
  sha256 "a0d3bc10740d48e6c5a3a0f3def578375825205463c96977cc5df96cf2d59493"

  url "https://update.gitfox.app/builds/retail/#{version.csv.second}/Gitfox.#{version.csv.second}.zip"
  name "Gitfox"
  desc "Git client"
  homepage "https://www.gitfox.app/"

  livecheck do
    url "https://api.gitfox.app/v1/versions"
    strategy :json do |json|
      json.dig("response", "builds")&.map do |item|
        next if !item["short_version_string"] || !item["build"]

        "#{item["short_version_string"]},#{item["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Gitfox.app"
  binary "#{appdir}/Gitfox.app/Contents/SharedSupport/bin/gitfox-cli", target: "gitfox"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bytieful.gitfox-retail.sfl*",
    "~/Library/Application Support/com.bytieful.Gitfox",
    "~/Library/Application Support/com.bytieful.Gitfox-retail",
    "~/Library/Application Support/Gitfox",
    "~/Library/Caches/com.bytieful.Gitfox",
    "~/Library/Caches/com.bytieful.Gitfox-retail",
    "~/Library/Caches/com.crashlytics.data/com.bytieful.Gitfox",
    "~/Library/HTTPStorages/com.bytieful.Gitfox-retail",
    "~/Library/Preferences/com.bytieful.Gitfox-retail.plist",
    "~/Library/Preferences/com.bytieful.Gitfox.*",
    "~/Library/Saved Application State/com.bytieful.Gitfox-retail.savedState",
    "~/Library/WebKit/com.bytieful.Gitfox",
    "~/Library/WebKit/com.bytieful.Gitfox-retail",
  ]
end
