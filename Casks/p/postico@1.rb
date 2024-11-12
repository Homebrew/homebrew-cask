cask "postico@1" do
  version "1.5.22,9592"
  sha256 "8adcbe10a1a077739e56d5c2795b763d9e1c546b773c65fcfd9eb03e0edad8d7"

  url "https://downloads.eggerapps.at/postico/postico-#{version.csv.second}.zip"
  name "Postico 1"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico/v1.php"

  # The version number is only present on the homepage. The id must be extracted
  # using header_match from the unversioned download link.
  livecheck do
    url :homepage
    regex(/version\s+(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      v = page.scan(regex).flatten.first

      header_url = "https://eggerapps.at/postico/download/"
      headers = Homebrew::Livecheck::Strategy.page_headers(header_url)
      id = headers.first["location"]&.match(/postico-(\d+(?:\.\d+)*)\.zip/i)

      next if v.blank? || id.blank?

      "#{v},#{id[1]}"
    end
  end

  conflicts_with cask: "postico"

  app "Postico.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end
