cask "subler" do
  version "1.7.4"
  sha256 "e33933e9a88f5ead475de43c88e583d76f24649bcc08d1e71de343b1e2c77160"

  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip",
      verified: "bitbucket.org/galad87/subler/"
  name "Subler"
  desc "Mux and tag mp4 files"
  homepage "https://subler.org/"

  livecheck do
    url "https://subler.org/appcast/appcast.xml"
    regex(/url=.*?Subler[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true

  app "Subler.app"

  zap trash: [
    "~/Library/Application Support/Subler",
    "~/Library/Caches/org.galad.Subler",
    "~/Library/Preferences/org.galad.Subler.plist",
    "~/Library/Saved Application State/org.galad.Subler.savedState",
  ]
end
