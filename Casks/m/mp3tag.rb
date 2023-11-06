cask "mp3tag" do
  version "1.8.9"
  sha256 "10f54c92e7adb6a70972b25014f98a4cfb92532149a660cb755a7ca9e3447188"

  url "https://updates.mp3tag.app/Mp3tag-#{version}.zip"
  name "Mp3tag"
  desc "Tool for editing metadata of audio files including MP3, FLAC, OGG, and more"
  homepage "https://mp3tag.app/"

  livecheck do
    url "https://mp3tag.app/get/"
    regex(/href=.*?Mp3tag[._-]?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Mp3tag.app"

  zap trash: [
    "~/Library/Application Scripts/app.mp3tag.Mp3tag",
    "~/Library/Containers/app.mp3tag.Mp3tag",
  ]
end
