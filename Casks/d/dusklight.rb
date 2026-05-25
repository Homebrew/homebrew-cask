cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "6f51a695bf0c507045687d4c98423bbf1ec53ec76369f688be766fed6b871c60",
         intel: "61a5a4aa22d6cca423cebce1daf7575bd9b0675ff53120372f2182b1dcedf8cb"

  url "https://github.com/TwilitRealm/dusklight/releases/download/v#{version}/Dusklight-v#{version}-macos-#{arch}.zip",
      verified: "github.com/TwilitRealm/dusklight/"
  name "Dusklight"
  desc "Reverse-engineered reimplementation of Twilight Princess"
  homepage "https://twilitrealm.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Dusklight.app"

  zap trash: "~/Library/Application Support/TwilitRealm"
end
