cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3"
  sha256 arm:   "e60db5a98cadbbdd4d5e1d44c9d335028f9e013f00c473544e04b1153f43f823",
         intel: "828c06f4acc31b72651f25623c92c9130a3ea9c02a5b80531c39e099bb721abb"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customise mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
