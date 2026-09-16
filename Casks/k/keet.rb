cask "keet" do
  arch intel: "-Intel"

  version "4.22.2"
  sha256 arm:   "2beb4c78a15e50f1cff899db88d4041c64f8c81452a00c09245da692a19f105d",
         intel: "2786f7654428832b875346b121349a6e30ae2276c31067c292804a11be9249ce"

  url "https://static.keet.io/downloads/#{version}/Keet#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Keet.app"

  uninstall quit: "io.keet.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.keet.app.sfl*",
    "~/Library/Application Support/Keet",
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Preferences/io.keet.app.plist",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
