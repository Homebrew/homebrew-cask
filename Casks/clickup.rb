cask "clickup" do
  version "2.0.20"
  sha256 "f9255a34450cc504864d2560c798cec44644ce72ce1ed0860024d59ff2a8a63c"

  url "https://attachments.clickup.com/desktop/clickup-desktop-#{version}-mac.dmg"
  appcast "https://github.com/clickup/clickup-release/releases.atom"
  name "ClickUp"
  desc "Productivity platform for tasks, docs, goals, and chat"
  homepage "https://clickup.com/"

  app "ClickUp.app"
end
