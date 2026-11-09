cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.2.6"
  sha256 arm:   "ca117c00465b0a658180d668033343dc6e0603fd3ef7bd5943753db31b0e9d86",
         intel: "c5f76ce9ac2427cf9d6249059119e1f0293de6a1ddbb8301b10f6d24e96c327f"

  url "https://github.com/radareorg/iaito/releases/download/#{version}/iaito_#{version}_#{arch}.dmg"
  name "iaito"
  desc "GUI for radare2"
  homepage "https://www.radare.org/n/iaito.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "iaito.app"

  uninstall quit: "org.radare.iaito"

  zap trash: [
    "~/Library/Application Support/radareorg/iaito",
    "~/Library/Caches/radareorg/iaito",
    "~/Library/Preferences/org.radare.iaito.plist",
    "~/Library/Preferences/radareorg/iaito",
    "~/Library/Saved Application State/org.radare.iaito.savedState",
  ]
end
