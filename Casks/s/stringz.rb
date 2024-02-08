cask "stringz" do
  version "0.7.5"
  sha256 "12b4172a1c98802fdadcd22777d6d9574906acdd09184019664fd3aef3edd722"

  url "https://github.com/mohakapt/Stringz/releases/download/v#{version}/Stringz-#{version}.dmg"
  name "Stringz"
  desc "Editor for localizable files"
  homepage "https://github.com/mohakapt/Stringz"

  depends_on macos: ">= :catalina"

  app "Stringz.app"

  zap trash: [
    "~/Library/Application Support/dev.stringz.stringz",
    "~/Library/Caches/dev.stringz.stringz",
    "~/Library/Preferences/dev.stringz.stringz.plist",
  ]
end
