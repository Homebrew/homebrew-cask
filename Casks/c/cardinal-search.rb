cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.23"
  sha256 arm:   "72fbcf6d486e6f1e8bc26a19b7374322d2898426f67f269534d196cdbffa2aea",
         intel: "a33b57a569e16cab35188453b220cd1e2ffd6cb9bef802699edff807401f428e"

  url "https://github.com/cardisoft/cardinal/releases/download/v#{version}/Cardinal_#{version}_#{arch}.dmg"
  name "Cardinal Search"
  desc "Fastest file searching tool"
  homepage "https://github.com/cardisoft/Cardinal"

  depends_on macos: ">= :monterey"

  app "Cardinal.app"

  zap trash: [
    "~/Library/Application Support/com.cardinal.one",
    "~/Library/Caches/com.cardinal.one",
    "~/Library/Preferences/com.cardinal.one.plist",
    "~/Library/Webkit/com.cardinal.one",
  ]
end
