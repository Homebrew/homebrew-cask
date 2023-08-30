cask "genesys-cloud" do
  version "2.26.567,68"
  sha256 "72eab598af2e9b24753125d8e9cc69ee7f66e480e4e817337e8f5fdf8337a8c9"

  url "https://app.mypurecloud.com/directory-mac/build-assets/#{version.csv.first}-#{version.csv.second}/genesys-cloud-mac-#{version.csv.first}.dmg"
  name "Genesys Cloud for macOS"
  desc "Run Genesys Cloud as a stand-alone program, keeping it separate from web browser"
  homepage "https://apps.mypurecloud.com/directory-mac/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/build-assets/(\d+(?:\.\d+)+)[._-](\d+).*?\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  auto_updates true

  app "Genesys Cloud.app"

  zap trash: [
    "~/Library/Caches/com.inin.purecloud.directory",
    "~/Library/HTTPStorages/com.inin.purecloud.directory",
    "~/Library/Preferences/com.inin.purecloud.directory.plist",
    "~/Library/Saved Application State/com.inin.purecloud.directory.savedState",
  ]
end
