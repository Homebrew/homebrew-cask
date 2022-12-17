cask "fme" do
  version "2022.2.1,22776"
  sha256 "a5ffa852ad74a0c185048f069f63abfa425cda1b5c7d40df3933ebb812cb9137"

  url "https://downloads.safe.com/fme/#{version.major}/fme-desktop-#{version.csv.first}-b#{version.csv.second}-macosx-x64.pkg"
  name "FME Desktop"
  desc "Platform for integrating spatial data"
  homepage "https://www.safe.com/"

  livecheck do
    url "https://www.safe.com/api/downloads/"
    strategy :page_match do |page|
      match = page.match(/fme-desktop-(\d+(?:\.\d+)+)-b(\d+)-macosx-x64\.pkg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "fme-desktop-#{version.csv.first}-b#{version.csv.second}-macosx-x64.pkg"

  uninstall pkgutil: [
              "com.safesoftware.pkg.engine.fme-desktop-#{version.major_minor}-b#{version.csv.second}-macosx-x64",
              "com.safesoftware.pkg.apps.fme-desktop-#{version.major_minor}-b#{version.csv.second}-macosx-x64",
            ],
            delete:  [
              "/Applications/FME #{version.major_minor}",
              "/Library/FME/#{version.major_minor}",
            ]

  zap trash: [
    "~/Library/Application Support/FME",
    "~/Library/Application Support/FME Desktop Help",
    "~/Library/Application Support/FME Help",
    "~/Library/Application Support/FME Workbench",
  ]
end
