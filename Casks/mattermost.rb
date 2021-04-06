cask "mattermost" do
  version "4.6.2"
  sha256 "c3d5de922b9dfe30bbc0496677d45f0a29525e0fbda746ddaeeb81e4c42b5014"

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
