cask "pyzo" do
  version "4.11.4"
  sha256 "ebad0baa28bea5ae658b0202730b36c228298acde3368b4b4e43d0780f6f5252"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
