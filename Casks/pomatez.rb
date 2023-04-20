cask "pomatez" do
  version "1.2.2"
  sha256 "05e115fff64f4ebe5bfc3cbd8fe8cf2fcb8339d6216bfeb347c9342e260ac81c"

  url "https://github.com/roldanjr/pomatez/releases/download/v#{version}/Pomatez-v#{version}-mac.dmg",
      verified: "github.com/roldanjr/pomatez/"
  name "Pomatez"
  desc "Pomodoro timer"
  homepage "https://roldanjr.github.io/pomatez"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pomatez.app"

  zap trash: "~/Library/Application Support/pomatez"
end
