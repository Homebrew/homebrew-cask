cask "pynsource" do
  version "1.79"
  sha256 "86cbf7664293ae867949bcb77bcca10221de8853783e8a77b0420c174e7f19b6"

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
