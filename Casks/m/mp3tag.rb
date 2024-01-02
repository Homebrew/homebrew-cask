cask "mp3tag" do
  version "1.8.11"
  sha256 "add9e160c3f2c14f72dea6d6b2522e8204874887f1ff5f6e1293ee39c2439cad"

  url "https://updates.mp3tag.app/Mp3tag-#{version}.zip"
  name "Mp3tag"
  desc "Tool for editing metadata of audio files including MP3, FLAC, OGG, and more"
  homepage "https://mp3tag.app/"

  livecheck do
    url "https://mp3tag.app/get/"
    regex(/href=.*?Mp3tag[._-]?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :mojave"

  app "Mp3tag.app"

  zap trash: [
    "~/Library/Application Scripts/app.mp3tag.Mp3tag",
    "~/Library/Containers/app.mp3tag.Mp3tag",
  ]
end
