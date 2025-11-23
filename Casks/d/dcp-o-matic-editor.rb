cask "dcp-o-matic-editor" do
  version "2.18.21"
  sha256 "a98cbda369500ae32164ae4205e35ce57305a5c17b4971bc14d924804a602f14"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  disable! date: "2025-07-28", because: "cannot be reliably fetched due to Cloudflare protections"

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
