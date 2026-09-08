cask "mp3tag" do
  version "1.14.0"
  sha256 "2996a0220f6faeb00c3e27517530cf63c598e95c2d0b9d9796cd17132f0b4eee"

  url "https://updates.mp3tag.app/Mp3tag-#{version}.zip"
  name "Mp3tag"
  desc "Tool for editing metadata of audio files including MP3, FLAC, OGG, and more"
  homepage "https://mp3tag.app/"

  livecheck do
    url "https://mp3tag.app/get/"
    regex(/href=.*?Mp3tag[._-]?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on :macos

  app "Mp3tag.app"

  uninstall quit: "app.mp3tag.Mp3tag"

  zap trash: [
    "~/Library/Application Scripts/app.mp3tag.Mp3tag",
    "~/Library/Containers/app.mp3tag.Mp3tag",
  ]
end
