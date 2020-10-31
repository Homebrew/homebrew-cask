# typed: false
cask "deltachat" do
  version "1.13.1"
  sha256 "4d8caae65438917a9e4841155a131cd58a5e6bcd9787b8bb018165f2922d90a2"

  # github.com/deltachat/deltachat-desktop was verified as official when first introduced to the cask
  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}.dmg"
  appcast "https://github.com/deltachat/deltachat-desktop/releases.atom"
  name "DeltaChat"
  desc "Is a chat app that sends messages via e-mails, encrypted if possible"
  homepage "https://delta.chat/"

  app "DeltaChat.app"
end
