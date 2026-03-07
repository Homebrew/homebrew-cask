cask "torrent-preview" do
  version "1.0"
  sha256 "6222198a8c8a4ae303ed7c18b8d80494ab4b6e1a165b220c294d1334b11dd6ef"

  url "https://github.com/sveinbjornpalsson/TorrentPreview/releases/download/v#{version}/TorrentPreview.zip"
  name "Torrent Preview"
  desc "QuickLook extension for .torrent files"
  homepage "https://github.com/sveinbjornpalsson/TorrentPreview"

  depends_on macos: ">= :ventura"

  app "TorrentPreview.app"

  zap trash: [
    "~/Library/Containers/com.sveinbjorn.TorrentPreview",
    "~/Library/Containers/com.sveinbjorn.TorrentPreview.TorrentPreviewExtension",
  ]
end
