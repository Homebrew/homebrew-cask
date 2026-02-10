cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.0.8"
  sha256 arm:   "4fbb4428c75674e65b3cac6414959adeffa6d0d4dc7f8bd37b38427307240eed",
         intel: "a03f2fc56905b7aca9fc8dc9e3601489f2004f680aefd534ba9c1152d93c9292"

  url "https://github.com/radareorg/iaito/releases/download/#{version}/iaito_#{version}_#{arch}.dmg",
      verified: "github.com/radareorg/iaito/"
  name "iaito"
  desc "GUI for radare2"
  homepage "https://www.radare.org/n/iaito.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "iaito.app"

  zap trash: [
    "~/Library/Application Support/radareorg/iaito",
    "~/Library/Caches/radareorg/iaito",
    "~/Library/Preferences/org.radare.iaito.plist",
    "~/Library/Preferences/radareorg/iaito",
    "~/Library/Saved Application State/org.radare.iaito.savedState",
  ]
end
