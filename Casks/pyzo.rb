cask "pyzo" do
  version "4.12.4"
  sha256 "c89c86d99357ca05e3632064b6d15502235bc4d165d6f6916f586d5fb9ac5984"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
