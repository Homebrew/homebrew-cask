cask "pynsource" do
  version "1.80"
  sha256 "759970e50407c0a58ff8eb53c373568768de5ea7a271e8a083f0ae414c733f93"

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
