cask "fme" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "-aarch64"

  version "2026.3.1,26656"
  sha256 arm:   "55edfc2f9c1e8550169d7f304a99ac257e75fd1614e0401418512241d7e40b35",
         intel: "4e45e1033596246b322df43e0b9684f880da2df5cde38a80f96a01b9207fe780"

  url "https://downloads.safe.com/fme/#{version.major}/macos#{folder}/fme-form-#{version.csv.first}-b#{version.csv.second}-macosx-#{arch}.pkg"
  name "FME Form"
  desc "Platform for integrating spatial data"
  homepage "https://www.safe.com/"

  livecheck do
    url "https://fme.safe.com/downloads/"
    regex(/fme[._-]form[._-]v?(\d+(?:\.\d+)+)[._-]b(\d+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on :macos

  pkg "fme-form-#{version.csv.first}-b#{version.csv.second}-macosx-#{arch}.pkg"

  uninstall pkgutil: [
              "com.safesoftware.pkg.apps.fme-form-#{version.major_minor}-b#{version.csv.second}-macosx-#{arch}",
              "com.safesoftware.pkg.engine.fme-form-#{version.major_minor}-b#{version.csv.second}-macosx-#{arch}",
            ],
            delete:  [
              "/Applications/FME #{version.major_minor}",
              "/Library/FME/#{version.major_minor}",
            ]

  zap trash: [
    "~/Library/Application Support/FME Desktop Help",
    "~/Library/Application Support/FME Help",
    "~/Library/Application Support/FME Workbench",
    "~/Library/Application Support/FME",
  ]
end
