cask "metaz" do
  version "1.0.2"
  sha256 "f5192f0554292a30b5ed541a380d9b597bdd4dc64d8e7d5e97eef8c35041f452"

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
