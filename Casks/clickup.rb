cask "clickup" do
  version "2.0.21"
  sha256 "7283c1f5c59e9c730e2796b647319a0314caefd91817eb6b23f3230187832bd4"

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  appcast "https://github.com/clickup/clickup-release/releases.atom"
  name "ClickUp"
  desc "Productivity platform for tasks, docs, goals, and chat"
  homepage "https://clickup.com/"

  app "ClickUp.app"
end
