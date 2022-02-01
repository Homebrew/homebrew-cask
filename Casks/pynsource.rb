cask "pynsource" do
  version "1.83"
  sha256 "a3b8812b8b0234627989b158b4eaa428682e61fbbcf0774c340a6617e76a47a1"

  url "https://github.com/abulka/pynsource/releases/download/version-#{version}/pynsource-macos-version-#{version}.zip",
      verified: "github.com/abulka/pynsource/"
  name "Pynsource"
  desc "Reverse engineer Python source code into UML"
  homepage "https://www.pynsource.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^version[._-]v?(\d+(?:\.\d+)+)$/)
  end

  app "Pynsource.app"

  zap trash: [
    "~/Library/Application Support/PyNsource",
    "~/Library/Logs/pynsource",
    "~/Library/Preferences/PyNSource",
    "~/Library/Saved Application State/Pynsource.savedState",
  ]
end
