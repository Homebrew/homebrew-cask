cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.2.2"
  sha256 arm:   "dc47554a5f1da68ce53b750f1a89786aa25601eea5e208c769bdac47fbaf4f17",
         intel: "78e06ae8923514158c4f1531c810f391e80db3a0f1d348b723f79a782e4e1273"

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
