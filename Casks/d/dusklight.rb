cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.1"
  sha256 arm:   "fc6086b6d4713aff24360727510dd5997f8daeae7be7da6f5c6b7ff008cdb910",
         intel: "76807140252bd72640c54fe063a92f58428ad567fd224600f6966f4358d73018"

  url "https://github.com/TwilitRealm/dusklight/releases/download/v#{version}/Dusklight-v#{version}-macos-#{arch}.zip",
      verified: "github.com/TwilitRealm/dusklight/"
  name "Dusklight"
  desc "Reverse-engineered reimplementation of Twilight Princess"
  homepage "https://twilitrealm.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Dusklight.app"

  zap trash: "~/Library/Application Support/TwilitRealm"
end
