cask "pynsource" do
  version "1.77"
  sha256 "1b4f6fca899876f0482de79ade1fa4d18cd2084eedbf08504311b0e3b46c649f"

  url "https://github.com/abulka/pynsource/releases/download/version-#{version}/pynsource-#{version}-macosx.zip",
      verified: "github.com/abulka/pynsource/"
  name "Pynsource"
  homepage "https://www.pynsource.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^version-(\d+(?:\.\d+)*)$/)
  end

  app "pynsource.app"

  zap trash: [
    "~/Library/Application Support/PyNsource",
    "~/Library/Logs/pynsource",
    "~/Library/Preferences/PyNSource",
    "~/Library/Saved Application State/Pynsource.savedState",
  ]
end
