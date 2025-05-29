cask "tourbox-console" do
  version "5.8.4"
  sha256 "0252f2b99652356512faaa7f97684b5d9431f246656dfee2bec4ab005edfe0fc"

  url "https://tourbox-web-files.s3.us-west-2.amazonaws.com/prod/console/TourBoxInstall#{version}.zip",
      verified: "tourbox-web-files.s3.us-west-2.amazonaws.com/prod/console/"
  name "tourbox-console"
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

  uninstall quit: "com.tourbox.ui.launch"
  uninstall pkgutil: "com.tourbox.ui.launch"

  zap trash: [
    "~/Library/Application Support/TourBox Console BAK",
    "~/Library/Application Support/TourBox Console",
  ]
end
