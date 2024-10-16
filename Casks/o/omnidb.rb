cask "omnidb" do
  version "2.17.0"
  sha256 "8fdd482d45d1b2d4d330074d94238d91cc91242239a3ebb62ccc3319bacd5d16"

  url "https://github.com/OmniDB/OmniDB/releases/download/#{version}/omnidb-app_#{version}-mac.dmg"
  name "OmniDB"
  desc "Web tool for database management"
  homepage "https://github.com/OmniDB/OmniDB/"

  deprecate! date: "2024-10-15", because: :unmaintained

  app "OmniDB.app"

  caveats do
    requires_rosetta
  end
end
