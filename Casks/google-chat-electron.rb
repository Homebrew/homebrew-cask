cask "google-chat-electron" do
  version "2.10.0"
  sha256 "698215925288a75f923e9d8cd25b2ce5cd8da03b0b5c9f8c965986e89aac1838"

  url "https://github.com/ankurk91/google-chat-electron/releases/download/2.10.0/google-chat-electron-#{version}-darwin-x64.zip"
  name "google-chat-electron"
  desc "Standalone app for Google Chat"
  homepage "https://github.com/ankurk91/google-chat-electron"

  app "google-chat-electron.app"
end
