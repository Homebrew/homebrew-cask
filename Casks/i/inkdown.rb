cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "78504fdc1f235388dfb1f55db2a91e199799827aed98b4f398e977fefa77d856",
         intel: "5c33296cebd623f4f450a802a619c19d3b3cd6ba6e346dc316465a5900d190d1"

  url "https://github.com/1943time/inkdown/releases/download/v#{version}/inkdown-mac-#{arch}.dmg"
  name "Inkdown"
  desc "WYSIWYG Markdown editor"
  homepage "https://github.com/1943time/inkdown"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Inkdown.app"

  zap trash: [
    "~/Library/Application Support/inkdown",
    "~/Library/Preferences/inkdown.plist",
    "~/Library/Saved Application State/inkdown.savedState",
  ]
end
