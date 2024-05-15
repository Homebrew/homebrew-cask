cask "font-devicons" do
  version "1.8.0"
  sha256 "fc0baa260f54832c059d1d9eab3798ae758d1a1cf0c1695e9883aab85d9a4308"

  url "https://github.com/vorillaz/devicons/archive/#{version}.zip",
      verified: "github.com/vorillaz/devicons/"
  name "Devicons"
  homepage "https://vorillaz.github.io/devicons/"

  font "devicons-#{version}/fonts/devicons.ttf"

  # No zap stanza required
end
