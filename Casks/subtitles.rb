cask "subtitles" do
  version "3.2.11"
  sha256 "72b68d998834ec3e6d5f03a1897766b7714cab712ccd5469ce9367b6cacd264c"

  url "https://subtitlesapp.com/download/Subtitles-mac-#{version}.zip"
  appcast "https://subtitlesapp.com/updates.xml"
  name "Subtitles"
  desc "Automatically downloads subtitles movies and TV shows"
  homepage "https://subtitlesapp.com/"

  app "Subtitles.app"

  zap trash: "~/Library/Application Support/Subtitles"
end
