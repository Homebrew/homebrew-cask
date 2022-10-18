cask "metaz" do
  version "1.0.3"
  sha256 "0458c1fdcadc198aeca68e1d775195c3022b549f70c0483e57930731af913cbe"

  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip",
      verified: "github.com/griff/metaz/"
  name "MetaZ"
  desc "Mp4 meta-data editor"
  homepage "https://metaz.maven-group.org/"

  livecheck do
    url :homepage
    regex(/href=.*?MetaZ[._-]v?(.+)\.zip/i)
  end

  app "MetaZ.app"

  zap trash: [
    "~/Library/Caches/org.maven-group.MetaZ",
    "~/Library/Logs/MetaZ.log",
    "~/Library/Preferences/org.maven-group.MetaZ.plist",
  ]
end
