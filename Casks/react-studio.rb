cask "react-studio" do
  version "1.8.14,426"
  sha256 "88e4874ca5f14a6fb442b0aeb371e48d5c8e1ced24099cf5c021771482a44423"

  url "https://s3.amazonaws.com/sc.neonto.com/ReactStudio_v#{version.csv.first.no_dots}_build#{version.csv.second}.zip",
      verified: "s3.amazonaws.com/sc.neonto.com/"
  name "ReactStudio"
  desc "App design environment"
  homepage "https://reactstudio.com/"

  livecheck do
    url "https://c1.neonto.com/studio/verinfo_reactstudio"
    strategy :page_match do |page|
      json_data = JSON.parse(page)
      next if json_data.blank?

      version = json_data["latestVersionDescription"]
      build = json_data["latestVersion"].to_i

      "#{version},#{build}"
    end
  end

  app "React Studio.app"

  zap trash: [
    "~/Documents/React Studio",
    "~/Library/Application Support/React Studio",
    "~/Library/Caches/com.neonto.ReactStudio",
    "~/Library/Cookies/com.neonto.ReactStudio.binarycookies",
    "~/Library/Preferences/com.neonto.ReactStudio.plist*",
    "~/Library/Saved Application State/com.neonto.ReactStudio.savedState",
  ]
end
