cask "phoenix" do
  version "2.6.8"
  sha256 "b779791ae673d676d9084d88d2c075d6a8cdd5b11e97d6ac8287dfa6df5c7f55"

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  name "Phoenix"
  desc "Window and app manager scriptable with JavaScript"
  homepage "https://github.com/kasper/phoenix/"

  depends_on macos: ">= :yosemite"

  app "Phoenix.app"

  zap trash: [
    "~/.phoenix.js",
    "~/Library/Application Support/Phoenix/storage.json",
  ]
end
