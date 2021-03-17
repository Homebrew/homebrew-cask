cask "clickup" do
  version "2.0.22"
  sha256 "c674dc22e3ae650d689b710d16ba8f535f8d89f370bff8d2e7a4228df49ae07f"

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  appcast "https://github.com/clickup/clickup-release/releases.atom"
  name "ClickUp"
  desc "Productivity platform for tasks, docs, goals, and chat"
  homepage "https://clickup.com/"

  app "ClickUp.app"
end
