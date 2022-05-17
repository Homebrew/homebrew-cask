cask "plover" do
  version "4.0.0.dev11"
  sha256 "1b7be7d1617260b8d50f642bbb0ee20dbd776be65d2c01582e47c53ad610400b"

  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/plover-#{version}-macosx_10_13_x86_64.dmg",
      verified: "github.com/openstenoproject/plover/"
  name "Plover"
  desc "Stenotype engine"
  homepage "https://www.openstenoproject.org/plover/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+[\w.]+)["' >]}i)
  end

  app "Plover.app"

  zap trash: "~/Library/Application Support/plover/"

  caveats <<~EOS
    Version 4 is a major change and the configuration file it creates is not compatible with
    Plover 3 or earlier. Please backup your plover.cfg.
  EOS
end
