cask "open-supaplex" do
  version "7.1.2"
  sha256 "fad3e2916a09cb5765b19e37d1db3b4ba68b189246dbe20789016cbed168502e"

  url "https://github.com/sergiou87/open-supaplex/releases/download/v#{version}/OpenSupaplex-macOS-v#{version}.zip"
  name "OpenSupaplex"
  desc "Reimplementation of the original Supaplex game in C and SDL"
  homepage "https://github.com/sergiou87/open-supaplex"

  livecheck do
    url "https://github.com/sergiou87/open-supaplex/releases"
    strategy :github_releases
  end

  depends_on arch: :intel

  app "OpenSupaplex.app"

  zap trash: [
    "~/Library/Application Support/OpenSupaplex",
    "~/Library/Saved Application State/com.OpenSupaplex.savedState",
  ]
end
