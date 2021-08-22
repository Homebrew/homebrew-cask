cask "resolutionator" do
  version "2.1.0,118"
  sha256 "3318c5754f935b3e052ff5c20ef33d90896b14149c367404b89bcd9e26810645"

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.before_comma.no_dots}.dmg"
  name "Resolutionator"
  homepage "https://manytricks.com/resolutionator/"

  livecheck do
    url "https://manytricks.com/resolutionator/appcast/"
    strategy :sparkle do |feed|
      version = feed.short_version
      version += ".0" if version.present? && (version.split(".").length < 3)
      "#{version},#{feed.version}"
    end
  end

  auto_updates true

  app "Resolutionator.app"
end
