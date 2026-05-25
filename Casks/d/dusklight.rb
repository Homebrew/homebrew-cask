cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "f9c8621c1048f960631b1a8d2ebff7e5d35e90d64bda7251793a60832e424238",
         intel: "f0cefd20234e929335dca6697d7d48fea2a909f1cf5f3bb737d29b8fff0e5b3f"

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
