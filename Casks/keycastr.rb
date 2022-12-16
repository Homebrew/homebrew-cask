cask "keycastr" do
  version "0.9.13"
  sha256 "f33c15cf0de213a71ae6da046a8acbdaab98bc7c22dceed7825f8d82a97ee0de"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  name "KeyCastr"
  desc "Open-source keystroke visualizer"
  homepage "https://github.com/keycastr/keycastr"

  app "KeyCastr.app"

  zap trash: "~/Library/Preferences/io.github.keycastr.plist"
end
