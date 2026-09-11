cask "keycastr" do
  version "0.11.1"
  sha256 "71fb7dd90a9bb96de2990499da280ce03e13cbd559a77477515191864977a65c"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  name "KeyCastr"
  desc "Open-source keystroke visualiser"
  homepage "https://github.com/keycastr/keycastr"

  livecheck do
    url "https://keycastr.github.io/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "KeyCastr.app"

  zap trash: [
    "~/Library/HTTPStorages/io.github.keycastr",
    "~/Library/Preferences/io.github.keycastr.plist",
  ]
end
