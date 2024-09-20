cask "livebook" do
  version "0.14.1"
  sha256 "d7486ea1d67f6825a52582a500208f71cae61b8234b125bc8f201aeabf9bc797"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
