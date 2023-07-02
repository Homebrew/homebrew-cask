cask "dterm-popup" do
  version "1.7.84-universal"
  sha256 "a5cd25fdf39a5b314016355439dd1783b9c437d38c12377ebcb35743cb2a1801"

  url "https://github.com/ershov/dterm/releases/download/#{version}/DTerm.zip"
  name "DTermpop-up context sensitive command line."
  desc "Pop-up context sensitive command-line terminal"
  homepage "https://github.com/ershov/dterm"

  depends_on macos: ">= :sierra"

  app "DTerm.app"

  zap trash: [
    "~/Library/Preferences/net.decimus.dterm.plist",
  ]
end
