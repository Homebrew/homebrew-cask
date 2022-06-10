cask "fme" do
  version "2022.0.1,22346"
  sha256 "7ce54789338551e2794b203e9342c6f3dd1811a0901521d63ca88e3b3f381821"

  url "https://downloads.safe.com/fme/#{version.major}/fme-desktop-#{version.csv.first}-b#{version.csv.second}-macosx.pkg"
  name "FME Desktop"
  desc "Platform for integrating spatial data"
  homepage "https://www.safe.com/"

  livecheck do
    url "https://www.safe.com/api/downloads/"
    strategy :page_match do |page|
      match = page.match(/fme-desktop-(\d+(?:\.\d+)+)-b(\d+)-macosx\.pkg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "fme-desktop-#{version.csv.first}-b#{version.csv.second}-macosx.pkg"

  uninstall pkgutil: [
    "com.safesoftware.pkg.engine.fme-desktop-#{version.major_minor}-b#{version.csv.second}-macosx",
    "com.safesoftware.pkg.apps.fme-desktop-#{version.major_minor}-b#{version.csv.second}-macosx",
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
