cask "pynsource" do
  version "1.81"
  sha256 "11fc81919a68fa8cd4914fe164e5eee624b08597201fa3d920e5379a78a4708a"

  url "https://github.com/abulka/pynsource/releases/download/version-#{version}/pynsource-macos-version-#{version}.zip",
      verified: "github.com/abulka/pynsource/"
  name "Pynsource"
  desc "Reverse engineer Python source code into UML"
  homepage "https://www.pynsource.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^version-(\d+(?:\.\d+)*)$/)
  end

  app "pynsource-macos-version-#{version}/Pynsource.app"

  zap trash: [
    "~/Library/Application Support/PyNsource",
    "~/Library/Logs/pynsource",
    "~/Library/Preferences/PyNSource",
    "~/Library/Saved Application State/Pynsource.savedState",
  ]
end
