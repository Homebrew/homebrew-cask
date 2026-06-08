cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.1"
  sha256 arm:   "57dc11362aff0fe5dcd043b489433a6b541bfa14cc4c78446cf88402796800ba",
         intel: "3e74d9f5f7c62902bbc3c1b0474ef7a4f34dcd810446cc3e3c913d2ad0437b5a"

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
