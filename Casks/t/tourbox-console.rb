cask "tourbox-console" do
  version "5.11.3,260612142948"
  sha256 "59ba5f51b7022253b7912b5b1b1e284947bad4dfd71cecaef732b53175f27abd"

  url "https://cdn.tourboxtech.com/prod/console/TourBoxInstall#{version.csv.join("_")}.zip"
  name "TourBox Console"
  desc "Configuration app for TourBox devices"
  homepage "https://www.tourboxtech.com/"

  livecheck do
    url "https://www.tourboxtech.com/en/downloads/macos/"
    regex(/TourBoxInstall(\d+(?:\.\d+)+)_(\d+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on :macos

  pkg "TourBoxInstall#{version.csv.first}/TourBoxInstall#{version.csv.first}.pkg"

  uninstall quit:    "com.tourbox.ui.launch",
            pkgutil: "com.tourbox.ui.launch"

  zap trash: [
    "~/Library/Application Support/TourBox Console BAK",
    "~/Library/Application Support/TourBox Console",
  ]
end
