cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.11.0"
  sha256 arm:   "406c3e87cd7c01fbc2b5911eb67937213ac721b0d928297c445bd2045654f0e6",
         intel: "3aa58e339cb492080cd4bd404db705234b4a85b544847db5ecffc681fc111bb8"

  url "https://github.com/freedomofpress/dangerzone/releases/download/v#{version}/Dangerzone-#{version}-#{arch}.dmg",
      verified: "github.com/freedomofpress/dangerzone/"
  name "Dangerzone"
  desc "Convert potentially dangerous PDFs or Office documents into safe PDFs"
  homepage "https://dangerzone.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Dangerzone.app"

  zap trash: [
    "~/Library/Application Support/dangerzone",
    "~/Library/Saved Application State/press.freedom.dangerzone.savedState",
  ]
end
