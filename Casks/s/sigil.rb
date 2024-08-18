cask "sigil" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.0"
  sha256 arm:   "053ea3fa9cbfe4cad6d4a66f3e3293ef9a898b9bbcd02db85cca47f29ba5f6f9",
         intel: "1852274cea05315aa9b9e1c75121a2b5fa636a7de0292977dd2c01ce98926755"

  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil.app-#{version}-1-Mac-#{arch}.txz",
      verified: "github.com/Sigil-Ebook/Sigil/"
  name "Sigil"
  desc "EPUB ebook editor"
  homepage "https://sigil-ebook.com/"

  depends_on macos: ">= :sierra"

  app "Sigil.app"

  zap trash: [
    "~/Library/Application Support/sigil-ebook",
    "~/Library/Preferences/com.sigil-ebook.Sigil.app.plist",
    "~/Library/Saved Application State/com.sigil-ebook.Sigil.app.savedState",
  ]
end
