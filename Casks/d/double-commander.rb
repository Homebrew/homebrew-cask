cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.7"
  sha256 arm:   "afa6080d31574b21077f28785cacabd3ac9e71ccec16f253b2a3c46577ced256",
         intel: "f482d79a42f894cb2e29642c2403242608b85a2498978169361bcf2828ff4e23"

  url "https://github.com/doublecmd/doublecmd/releases/download/v#{version}/doublecmd-#{version}.cocoa.#{arch}.dmg",
      verified: "github.com/doublecmd/doublecmd/releases/"
  name "Double Commander"
  desc "File manager with two panels"
  homepage "https://doublecmd.sourceforge.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "Double Commander.app"

  zap trash: "~/Library/Caches/doublecmd"
end
