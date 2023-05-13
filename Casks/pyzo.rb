cask "pyzo" do
  version "4.12.8"
  sha256 "f807a5079ddb9cd7c04ad8915bd6df98e302185469886f6521aea818f884b018"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
