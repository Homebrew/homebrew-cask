cask "alt-tab" do
  version "6.27.1"
  sha256 "f7da0ccef24df73e2fb4f1f27956e42e47c8e133a7f6cc8379c114aa3e2782ea"

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  name "alt-tab"
  desc "Utility to set up alt-tab to switch between windows"
  homepage "https://github.com/lwouis/alt-tab-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AltTab.app"

  uninstall quit: "com.lwouis.alt-tab-macos"

  zap trash: [
    "~/Library/Application Support/com.lwouis.alt-tab-macos",
    "~/Library/Caches/com.lwouis.alt-tab-macos",
    "~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
  ]
end
