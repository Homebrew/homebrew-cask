cask "tourbox-console" do
  version "5.9.2"
  sha256 "b257fa7d565681013cecf6743d681680428d3b85a161adf4baa6d516d3c8dec2"

  url "https://tourbox-web-files.s3.us-west-2.amazonaws.com/prod/console/TourBoxInstall#{version}.zip",
      verified: "tourbox-web-files.s3.us-west-2.amazonaws.com/prod/console/"
  name "TourBox Console"
  desc "Configuration app for TourBox devices"
  homepage "https://www.tourboxtech.com/"

  livecheck do
    url "https://www.tourboxtech.com/tbmall/download/newest?local=US", post_json: {
      softName: "TourBox Console",
    }
    strategy :json do |json|
      json.dig("result", "normalSoft", "version")
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "TourBoxInstall#{version}/TourBoxInstall#{version}.pkg"

  uninstall quit:    "com.tourbox.ui.launch",
            pkgutil: "com.tourbox.ui.launch"

  zap trash: [
    "~/Library/Application Support/TourBox Console BAK",
    "~/Library/Application Support/TourBox Console",
  ]
end
