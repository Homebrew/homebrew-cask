cask "pyzo" do
  version "4.16.0"
  sha256 "c5ffd971deb376ececd74e9767779e48ab177c0634b470b20ccf9f1ab4575299"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"

  caveats do
    requires_rosetta
  end
end
