cask "phoenix" do
  version "3.0.0"
  sha256 "9fbe966e2f82f8702a431a183fb2a8bc5866233433fb34bc7570df39bf069049"

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  name "Phoenix"
  desc "Window and app manager scriptable with JavaScript"
  homepage "https://github.com/kasper/phoenix/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Phoenix.app"

  zap trash: [
    "~/Library/Application Support/Phoenix/storage.json",
    "~/Library/Preferences/org.khirviko.Phoenix.plist",
  ]
end
