cask "mints" do
  version "1.4.a,2021-05"
  sha256 "12d739e93c9c78e8a4ff56899dd0c8cd45aaedd8c767cd33dbbdda52f9863713"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.tr("-", "/")}/mints#{version.before_comma.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com"
  name "mints"
  desc "Collection of tools for investigating problems and collecting system information"
  homepage "https://eclecticlight.co/mints-a-multifunction-utility/"

  app "Mints#{version.major_minor.no_dots}/Mints.app"
end
