cask "subler" do
  version "1.7.5"
  sha256 "3596dad190deae9dfcdd6bac68a477def27df407e97f6870553b4640c08fd0b6"

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
