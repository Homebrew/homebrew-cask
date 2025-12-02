cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.14"
  sha256 arm:   "0fd89c14f67da48106e0c10d98a40e6d34aef7b8aef24d915d0e68deab79a0fd",
         intel: "d660870a24a52264dbe52e7dccfd9d1ea7259a7f3fed7f5c4526ef96cb2abeaa"

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
