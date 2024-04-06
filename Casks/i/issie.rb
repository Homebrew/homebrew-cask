cask "issie" do
  arch arm: "arm64", intel: "x86_64"

  version "4.1.3"
  sha256 arm:   "262d786c40f8f4a1925246f1ce5144b829693afb045caa34353b6c340aa1440f",
         intel: "c8edef9e1b036a82388e2893fcb38eeb7abc8b7bbdb5edb1233b9c1595dae1b7"

  url "https://github.com/tomcl/issie/releases/download/v#{version}/issie-#{version}-#{arch}.dmg",
      verified: "github.com/tomcl/issie/"
  name "issie"
  desc "Intuitive cross-platform hardware design application"
  homepage "https://tomcl.github.io/issie"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "issie.app"

  zap trash: "~/Library/Preferences/ISSIE.plist"
end
