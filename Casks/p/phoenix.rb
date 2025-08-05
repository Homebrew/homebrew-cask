cask "phoenix" do
  version "4.0.1"
  sha256 "7d194ca75f33f6c018fe8fb974e372544a61a058222d62d57e6c929fe91949c3"

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  name "Phoenix"
  desc "Window and app manager scriptable with JavaScript"
  homepage "https://github.com/kasper/phoenix/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Phoenix.app"

  uninstall quit:       [
              "org.khirviko.Phoenix",
              "org.khirviko.Phoenix.Launcher",
            ],
            login_item: "Phoenix"

  zap trash: [
    "~/Library/Application Scripts/org.khirviko.Phoenix.Launcher",
    "~/Library/Caches/org.khirviko.Phoenix",
    "~/Library/Containers/org.khirviko.Phoenix.Launcher",
    "~/Library/HTTPStorages/org.khirviko.Phoenix",
    "~/Library/WebKit/org.khirviko.Phoenix",
  ]
end
