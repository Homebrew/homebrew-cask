cask "fme" do
  version "2021.2.0.1,21789"
  sha256 "5bd89c262999f554490f6fba7de49cdb1ec8b840b148a5cb5652dd922ee32072"

  url "https://downloads.safe.com/fme/#{version.major}/fme-desktop-#{version.before_comma}-b#{version.after_comma}-macosx.pkg"
  name "FME Desktop"
  desc "Platform for integrating spatial data"
  homepage "https://www.safe.com/"

  livecheck do
    url "https://www.safe.com/api/downloads/"
    strategy :page_match do |page|
      match = page.match(%r{/fme-desktop-(\d+(?:\.\d+)*)-b(\d+)-macosx\.pkg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "fme-desktop-#{version.before_comma}-b#{version.after_comma}-macosx.pkg"

  uninstall pkgutil: [
    "com.safesoftware.pkg.engine.fme-desktop-#{version.before_comma}-b#{version.after_comma}-macosx",
    "com.safesoftware.pkg.apps.fme-desktop-#{version.before_comma}-b#{version.after_comma}-macosx",
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
