cask "mattermost" do
  version "4.5.4"
  sha256 "a6eb3abbc5604c10e5a970e87123225ead52c7182f0acc9ea27bb42bb5011725"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast "https://github.com/mattermost/desktop/releases.atom"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://about.mattermost.com/"

  app "Mattermost.app"
end
