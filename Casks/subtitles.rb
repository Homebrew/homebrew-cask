cask "subtitles" do
  version "3.2.16"
  sha256 "0e63c5eecd4175e99006e8bbaab88eee6c3e17757b4ba28aa7642d22400befe3"

  url "https://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  name "Subtitles"
  desc "Automatically downloads subtitles movies and TV shows"
  homepage "https://subtitlesapp.com/"

  livecheck do
    url "https://subtitlesapp.com/updates.xml"
    strategy :sparkle
  end

  app "Subtitles.app"

  zap trash: "~/Library/Application Support/Subtitles"
end
