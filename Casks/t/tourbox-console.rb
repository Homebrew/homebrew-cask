cask "tourbox-console" do
  version "5.10.3"
  sha256 "65bc22851a8698b1c0d3dc4dc90074a1412a91e181e7115442d90e8c5995f918"

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
