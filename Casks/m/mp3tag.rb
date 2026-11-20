cask "mp3tag" do
  version "1.15.1"
  sha256 "dc22d98112190623482ade341529caa26f5169420f4b6a5ec5311701cdb79ee2"

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
