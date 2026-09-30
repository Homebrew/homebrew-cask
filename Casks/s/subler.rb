cask "subler" do
  version "1.9.4"
  sha256 "3683926fd2cb2680bdaa53a6dc0ac18a111366cbc1c4e76bfd2c7968ee5b40d2"

  url "https://github.com/SublerApp/Subler/releases/download/#{version}/Subler-#{version}.zip"
  name "Subler"
  desc "Mux and tag mp4 files"
  homepage "https://subler.org/"

  livecheck do
    url "https://subler.org/appcast/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Subler.app"

  zap trash: [
    "~/Library/Application Support/Subler",
    "~/Library/Caches/org.galad.Subler",
    "~/Library/Preferences/org.galad.Subler.plist",
    "~/Library/Saved Application State/org.galad.Subler.savedState",
  ]
end
