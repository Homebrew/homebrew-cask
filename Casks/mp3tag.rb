cask "mp3tag" do
  version "1.7.0"
  sha256 "e5c10b4457d5fab6e96415f70082799ba454727d2df0191d06c8e3945dd816ea"

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
