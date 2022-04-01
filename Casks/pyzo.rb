cask "pyzo" do
  version "4.12.3"
  sha256 "5a6a92cbf86e9c3ad7976147ee2bd7b14bbb68ff79038cdc6f9c08f13b58cc47"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
