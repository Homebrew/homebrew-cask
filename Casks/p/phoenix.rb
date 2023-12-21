cask "phoenix" do
  version "4.0.0"
  sha256 "174ebec4c7860d014d02441867721a14342521c0a9482a0fa8605f644b3a40b2"

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
