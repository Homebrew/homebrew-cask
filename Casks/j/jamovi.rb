cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.5.0"
  sha256 arm:   "85e3031f0df5058e25858caa6cb1d5e6f496d24d34b05aa61b58c7469eb2fdde",
         intel: "d0934538ea34750ffc031c4f7812bbe98a79e70e2f8ed80c786afaa527fde611"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState",
  ]
end
