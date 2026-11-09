cask "keet" do
  arch intel: "-Intel"

  version "4.25.2"
  sha256 arm:   "7d163899978d030eda1bd192d21168b92685b4b119208221a52941f0c0c18548",
         intel: "355ba2117ad4bdf972ce888b634864682bc486a40a5ab1a3b9d6431a75b82d4e"

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
