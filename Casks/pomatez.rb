cask "pomatez" do
  version "1.2.1"
  sha256 "f36450c031967059554a2ff7457b9b94b5914f9b82c2289f547056e5723ead3e"

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
