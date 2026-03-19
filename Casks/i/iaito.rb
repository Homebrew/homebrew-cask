cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.1.2"
  sha256 arm:   "beb9d582ba160bb81fada70808cb6e8a9fa3aba7248bb671c4881df839705832",
         intel: "3fc76efe5f9ec1426e40772950bacb9eb6a94e1d3666459810af65a2304a4499"

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
