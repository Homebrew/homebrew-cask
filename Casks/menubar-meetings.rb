cask "menubar-meetings" do
  version "1.1"
  sha256 "92fb89e973435086966fb8fb1e8c880234a8c693e38b82355bd00b2073a7dcaa"

  url "https://github.com/nicolai92/akai/releases/download/v#{version}/Meetings.app.zip"
  name "Meetings"
  desc "Join meetings from the menubar"
  homepage "https://github.com/nicolai92/akai/"

  app "Meetings.app"
end
