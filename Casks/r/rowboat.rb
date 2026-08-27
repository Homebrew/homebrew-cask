cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "8128a431f7c9b4dae9dc47356adcd2fb1740f10fe6b9b4dd2b179af79d443adb",
         intel: "1658535749b4cb2db496176f913719beee186e9e23b58d5c7ac0c1d47320e8ac"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
