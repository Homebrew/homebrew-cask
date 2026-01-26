cask "tourbox-console" do
  version "5.11.0"
  sha256 "31d92ac5eb43710b4d25451a5372d60694093bc903d40a63b065f48a4c3b0c34"

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
