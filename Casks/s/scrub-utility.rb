cask "scrub-utility" do
  version "1.3,2023.06"
  sha256 "d4537bc05615fcb4ef2a00b042a494b071b9cfaeb4ced7e8884fd3945034655d"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/scrub#{version.csv.first.no_dots}.zip"
  name "Scrub"
  desc "Cleans folders and volumes to guard against potential leaks of sensitive data"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/scrub[^"' >]*?\.zip[^>]*?>\s*scrub\s+v?(\d+(?:\.\d+)*)[^a-z)]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]}.#{match[1]}"
      end
    end
  end

  app "scrub#{version.csv.first.no_dots}/Scrub.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.scrub.sfl*",
    "~/Library/Preferences/co.eclecticlight.Scrub.plist",
    "~/Library/Saved Application State/co.eclecticlight.Scrub.savedState",
  ]
end
