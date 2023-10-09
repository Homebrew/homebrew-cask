cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "d397bea7b36b68086ad062e226604c6936e42df267ba5279be07f0ad64a93546",
         intel: "166027534486bc1a3c81a7b1aedcdedd9d9693c779c83ed828cfca99e5cbcceb"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customize mouse movements between multiple displays"
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
