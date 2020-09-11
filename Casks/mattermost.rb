cask "mattermost" do
  version "4.5.3"
  sha256 "77b6b936e2c83b47f14b7fca1e4065bf1e9817e499f09af5c29fbe35adbe9ada"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast "https://github.com/mattermost/desktop/releases.atom"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://about.mattermost.com/"

  app "Mattermost.app"
end
