cask "plover" do
  version "4.0.0.dev12"
  sha256 "215660dbbbab801191841e6eb8385d033d94bf20ec0aa518959a750fab8da9f5"

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
