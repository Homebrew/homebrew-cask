cask "fat-drive-sorter" do
  version "1.0.1"
  sha256 "3e10b53a6ab9dffd26a3a0d3b1651106b00c63221170919d6def4f2afb8512d7"

  url "https://github.com/lwouis/fat-drive-sorter/releases/download/v#{version}/FatDriveSorter-#{version}.zip"
  name "FatDriveSorter"
  desc "Actually sort files on your FAT drives"
  homepage "https://github.com/lwouis/fat-drive-sorter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "FatDriveSorter.app"

  uninstall quit: "com.lwouis.fat-drive-sorter"

  zap trash: [
    "~/Library/Application Support/com.lwouis.fat-drive-sorter",
    "~/Library/Caches/com.lwouis.fat-drive-sorter",
    "~/Library/Cookies/com.lwouis.fat-drive-sorter.binarycookies",
    "~/Library/Preferences/com.lwouis.fat-drive-sorter.plist",
  ]
end
