cask "plover" do
  version "4.0.0.dev10"
  sha256 "a19c59ec874569e6f5a765d15627bcf439664148859360a805305d985baaf193"

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
