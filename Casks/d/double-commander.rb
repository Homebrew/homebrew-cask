cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.8"
  sha256 arm:   "7432cf00b9d111730b26ca69d546d40408ca1b8e7ac31253fbc68780799120f0",
         intel: "2cb6d149fa9b4c993ee6b9323224c26b90181f1bf9c2277049678ee08be3c88d"

  url "https://github.com/doublecmd/doublecmd/releases/download/v#{version}/doublecmd-#{version}.cocoa.#{arch}.dmg"
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
