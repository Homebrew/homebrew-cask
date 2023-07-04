cask "pyzo" do
  version "4.13.3"
  sha256 "70f4678e181b78d2bc5a8d9a2ec7046cc8b0548f6899a140aac0f1748280b455"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
