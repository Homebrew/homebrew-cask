cask "sameboy" do
  version "1.0.5"
  sha256 "a80890e3b9ef59c31cb4da458f30b13430ec2b887d9f884cea4cb55376e2a3ef"

  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator"
  homepage "https://sameboy.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "SameBoy.app"

  uninstall quit: "com.github.liji32.sameboy"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.liji32.sameboy.sfl*",
    "~/Library/Caches/com.github.liji32.sameboy",
    "~/Library/Preferences/com.github.liji32.sameboy.plist",
    "~/Library/Saved Application State/com.github.liji32.sameboy.savedState",
  ]
end
