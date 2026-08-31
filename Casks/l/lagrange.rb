cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.21.0"
  sha256 arm:   "aafe7c5e6086c7fe006efbdfdfd66e59f150a981c4ca7fd1936f7d8e83506feb",
         intel: "bcc0e434857e7f836dc04644718ede672174e3b2f7cc82220a377dbf5fabfb48"

  url "https://git.skyjake.fi/gemini/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos#{arch}.tbz"
  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  livecheck do
    url "https://etc.skyjake.fi/lagrange/appcast-#{livecheck_arch}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end
