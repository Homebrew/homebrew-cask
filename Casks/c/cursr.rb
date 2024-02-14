cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.6.6"
  sha256 arm:   "3a02c70bdf278fb5d6406b0959340fafc0f6086364221886994be46265255821",
         intel: "b590330df32bc981c449f5e6145de5dc56a6ae381d3daf5a001e0d6468162eab"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customise mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
