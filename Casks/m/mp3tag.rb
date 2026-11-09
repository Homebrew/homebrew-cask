cask "mp3tag" do
  version "1.15.0"
  sha256 "28299a111664999fc07a52b8fa2d08c4766d78331afc54abbbab636d769ad5ab"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.mp3tag.mp3tag.sfl*",
    "~/Library/Containers/app.mp3tag.Mp3tag",
  ]
end
