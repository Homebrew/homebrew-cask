cask "mattermost" do
  version "4.6.0"
  sha256 "b960c4a343715fda5fa9581943618b0585ec4f2946d31b59764a3efafb1c1be1"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast "https://github.com/mattermost/desktop/releases.atom"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://about.mattermost.com/"

  app "Mattermost.app"
end
