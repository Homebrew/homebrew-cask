cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.20.4"
  sha256 arm:   "635e42e05db2321e6eb27e75a3351543a700fce3f33fe7eede15ef2113f1440b",
         intel: "30794e33213fd1b2fc01aee72859640f04985248d8b7567e8caa30f172e45d53"

  url "https://git.skyjake.fi/gemini/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos#{arch}.tbz"
  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  livecheck do
    url "https://etc.skyjake.fi/lagrange/appcast-#{livecheck_arch}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end
