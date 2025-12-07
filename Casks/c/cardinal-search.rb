cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.16"
  sha256 arm:   "9e3df93a59668e9283695ccfa12413687a73354355c01148532dc1a9a5b25cac",
         intel: "40f729273702d18e1f245c4c87aedf2274d035da19f8869146c722c5fe647b80"

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
