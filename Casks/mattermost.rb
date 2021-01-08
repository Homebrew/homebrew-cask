cask "mattermost" do
  version "4.6.1"
  sha256 "26bddc75d7a3d7507b6f9bdcbc6d06195c61acdab3924125c390deb579a99a8b"

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  name "Mattermost"
  desc "Open-source, self-hosted Slack-alternative"
  homepage "https://about.mattermost.com/"

  livecheck do
    url "https://docs.mattermost.com/install/desktop.html#macos-10-9"
    strategy :page_match
    regex(%r{href=.*?/mattermost-desktop-(\d+(?:\.\d+)*)-mac\.dmg}i)
  end

  app "Mattermost.app"
end
