cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2023.4.1"
  sha256 arm:   "92034899da6760c9f541b9e945eafdb93a18540fd88a46287dc0900e475106bb",
         intel: "d70455d4617a06af4afd61ffcaad74ab4eebc846f6fcb519b8303ed2ebd7c7ae"

  url "https://download.studio3t.com/studio-3t/mac#{arch}/#{version}/Studio-3T.dmg"
  name "Studio 3T"
  desc "IDE, client, and GUI for MongoDB"
  homepage "https://studio3t.com/"

  livecheck do
    url "https://studio3t.com/download-thank-you/?OS=osx#{livecheckarch}"
    regex(%r{/v?(\d+(?:\.\d+)+)/Studio[._-]?3T\.dmg}i)
  end

  auto_updates true

  app "Studio 3T.app"

  zap trash: [
    "~/.3T/studio-3t/",
    "~/Library/Preferences/3t.enterprise.mongochef.plist",
    "~/Library/Preferences/3t.mongochef.core.plist",
    "~/Library/Preferences/3t.mongochef.enterprise.plist",
    "~/Library/Preferences/3t.mongochef.pro.plist",
  ]
end
