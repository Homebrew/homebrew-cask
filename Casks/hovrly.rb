cask "hovrly" do
  version "2.4.5"
  sha256 "2cd4d3fc696a7a59446fea3c0a1d9f77b23cfed8bcd53c6992ffb5dc78711b88"

  url "https://github.com/tarutin/hovrly/releases/download/v#{version}/Hovrly-#{version}-universal.dmg", verified: "github.com/tarutin/hovrly/"
  name "Hovrly"
  desc "Best partner for disctributed teams"
  homepage "https://hovrly.com/"

  app "Hovrly.app"

  # No zap stanza required
end
