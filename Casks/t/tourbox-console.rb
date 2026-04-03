cask "tourbox-console" do
  version "5.11.2,260402120540"
  sha256 "5c908696af3c44d88ffa7e654608a1a65f2d268c1fcd2d7a5a8b4c27df53b931"

  url "https://cdn.tourboxtech.com/prod/console/TourBoxInstall#{version.csv.join("_")}.zip"
  name "TourBox Console"
  desc "Configuration app for TourBox devices"
  homepage "https://www.tourboxtech.com/"

  livecheck do
    url "https://www.tourboxtech.com/tbmall/download/newest?local=US",
        post_json: {
          softName: "TourBox Console",
        }
    regex(/TourBoxInstall[._-]?v?(\d+(?:[._]\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("result", "normalSoft", "macPath")&.[](regex, 1)&.tr("_", ",")
    end
  end

  pkg "TourBoxInstall#{version.csv.first}/TourBoxInstall#{version.csv.first}.pkg"

  uninstall quit:    "com.tourbox.ui.launch",
            pkgutil: "com.tourbox.ui.launch"

  zap trash: [
    "~/Library/Application Support/TourBox Console BAK",
    "~/Library/Application Support/TourBox Console",
  ]
end
