cask "pynsource" do
  version "1.77"
  sha256 "1b4f6fca899876f0482de79ade1fa4d18cd2084eedbf08504311b0e3b46c649f"

  # github.com/abulka/pynsource/ was verified as official when first introduced to the cask
  url "https://github.com/abulka/pynsource/releases/download/version-#{version}/pynsource-#{version}-macosx.zip"
  appcast "https://github.com/abulka/pynsource/releases.atom"
  name "Pynsource"
  homepage "https://www.pynsource.com/"

  app "pynsource.app"

  zap trash: [
    "~/Library/Application Support/PyNsource",
    "~/Library/Logs/pynsource",
    "~/Library/Preferences/PyNSource",
    "~/Library/Saved Application State/Pynsource.savedState",
  ]
end
