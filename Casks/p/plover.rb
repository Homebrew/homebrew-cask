cask "plover" do
  version "5.1.0"
  sha256 "0925e872052601b54fb483cfe08bb92b8126b2a9ca5e523ae61b2bc52a1158b6"

  on_sequoia do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

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

  app "Plover.app"

  zap trash: "~/Library/Application Support/plover"
end
