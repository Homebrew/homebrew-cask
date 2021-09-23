cask "clickup" do
  version "3.0.1"

  if Hardware::CPU.intel?
    url "https://download.todesktop.com/210531zdwwjv8ke/ClickUp%20#{version}-x64.dmg",
        verified: "download.todesktop.com/210531zdwwjv8ke/"
    sha256 "841b6ebc7472076889eb14c83bd63a8d88bcca7b21d0fb53e119b29da11c9a26"
  else
    url "https://download.todesktop.com/210531zdwwjv8ke/ClickUp%20#{version}-arm64.dmg",
        verified: "download.todesktop.com/210531zdwwjv8ke/"
    sha256 "926679bdaf761d1e5dd7e5523d5b144e6ec1cc3db860c393f7c297e43337ff3f"
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
