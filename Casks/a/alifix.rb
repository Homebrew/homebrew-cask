cask "alifix" do
  version "1.3,2023.06"
  sha256 "62f09a6bdb991c6cc472067b7cdaa1f4b8e9e530de74e75e446bf3e3293fee9d"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/#{token}#{version.csv.first.no_dots}.zip"
  name "Alifix"
  desc "Refreshes aliases and identifies broken aliases"
  homepage "https://eclecticlight.co/taccy-signet-precize-alifix-utiutility-alisma/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/alifix[^"' >]*?\.zip[^>]*?>\s*alifix\s+v?(\d+(?:\.\d+)*[ab]?)[^a-z)]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]}.#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "alifix#{version.csv.first.no_dots}/Alifix.app"

  zap trash: [
    "~/Library/Preferences/co.eclecticlight.Alifix.plist",
    "~/Library/Saved Application State/co.eclecticlight.Alifix.savedState",
  ]
end
