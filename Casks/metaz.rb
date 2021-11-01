cask "metaz" do
  version "1.0.1"
  sha256 "102a57e1e0553149a3075aa68bfb8adf5c037178ceb3e04ee7db9a2091439747"

  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip",
      verified: "github.com/griff/metaz/"
  name "MetaZ"
  desc "Mp4 meta-data editor"
  homepage "https://metaz.maven-group.org/"

  livecheck do
    url :url
    regex(/href=.*?MetaZ[._-]v?(.+)\.zip/i)
    strategy :github_latest
  end

  app "MetaZ.app"

  zap trash: [
    "~/Library/Caches/org.maven-group.MetaZ",
    "~/Library/Logs/MetaZ.log",
    "~/Library/Preferences/org.maven-group.MetaZ.plist",
  ]
end
