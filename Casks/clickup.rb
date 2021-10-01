cask "clickup" do
  version "3.0.2"

  if Hardware::CPU.intel?
    url "https://download.todesktop.com/210531zdwwjv8ke/ClickUp%20#{version}-x64.dmg",
        verified: "download.todesktop.com/210531zdwwjv8ke/"
    sha256 "3ccd6ccf5121afe591c79ed674a8090bfff90c551237d288c6fb24ae0b5b2501"
  else
    url "https://download.todesktop.com/210531zdwwjv8ke/ClickUp%20#{version}-arm64.dmg",
        verified: "download.todesktop.com/210531zdwwjv8ke/"
    sha256 "8a792730e506cfc80cb344d14a74d2b049b046be18a1e19b49e7ace9237d82d0"
  end

  name "ClickUp"
  desc "Productivity platform for tasks, docs, goals, and chat"
  homepage "https://clickup.com/"

  livecheck do
    url "https://download.todesktop.com/210531zdwwjv8ke/latest-mac.yml"
    strategy :electron_builder
  end

  app "ClickUp.app"
end
