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

  uninstall login_item: "Phoenix",
            quit:       [
              "org.khirviko.Phoenix",
              "org.khirviko.Phoenix.Launcher",
            ]

  zap trash: [
    "~/Library/Application Scripts/org.khirviko.Phoenix.Launcher",
    "~/Library/Caches/org.khirviko.Phoenix",
    "~/Library/Containers/org.khirviko.Phoenix.Launcher",
    "~/Library/HTTPStorages/org.khirviko.Phoenix",
    "~/Library/WebKit/org.khirviko.Phoenix",
  ]
end
