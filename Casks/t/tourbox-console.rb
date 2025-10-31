cask "tourbox-console" do
  version "5.10.1"
  sha256 "363dee495a6385c64b446c21e87aacb421e2a1542d216364e1d1fc18f77c7abe"

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

  pkg "TourBoxInstall#{version}/TourBoxInstall#{version}.pkg"

  uninstall quit:    "com.tourbox.ui.launch",
            pkgutil: "com.tourbox.ui.launch"

  zap trash: [
    "~/Library/Application Support/TourBox Console BAK",
    "~/Library/Application Support/TourBox Console",
  ]
end
