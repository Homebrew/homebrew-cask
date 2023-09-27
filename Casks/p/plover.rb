cask "plover" do
  version "4.0.0rc1"
  sha256 "6cf1e0dc9cd43b96fa8114974a41e2a61a32ac2c992b91fb731dcd7d4968edb5"

  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/plover-#{version}-macosx_10_13_x86_64.dmg",
      verified: "github.com/openstenoproject/plover/"
  name "Plover"
  desc "Stenotype engine"
  homepage "https://www.openstenoproject.org/plover/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+[\w.]+)/i)
    strategy :github_latest
  end

  app "Plover.app"

  zap trash: "~/Library/Application Support/plover/"

  caveats <<~EOS
    Version 4 is a major change and the configuration file it creates is not
    compatible with Plover 3 or earlier. Please backup your plover.cfg.
  EOS
end
