cask "plover" do
  version "5.0.0"
  sha256 "fa37dea58136ab3ae8da50f32dc697a59ba45158aa01e7a12e75a99f9a9679bf"

  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/plover-#{version}-macosx_12_0_universal2.dmg",
      verified: "github.com/openstenoproject/plover/"
  name "Plover"
  desc "Stenotype engine"
  homepage "https://www.openstenoproject.org/plover/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+[\w.]+)/i)
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Plover.app"

  zap trash: "~/Library/Application Support/plover"

  caveats do
    <<~EOS
      Version 4 is a major change and the configuration file it creates is not
      compatible with Plover 3 or earlier. Please backup your plover.cfg.
    EOS
  end
end
