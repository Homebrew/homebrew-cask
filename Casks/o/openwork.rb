cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.2"
  sha256 arm:   "68214d72db77d1f4d8e3b6709aedf918cd3554065b114d6051aebd286af7230c",
         intel: "3b0030c2132f7c18986ce6632c8cd5eb57a93ecd41b1db07b8663788e9788d65"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-mac-#{arch}-#{version}.dmg",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "OpenWork.app"

  zap trash: [
    "~/Library/Application Support/OpenWork",
    "~/Library/Caches/OpenWork",
    "~/Library/Preferences/com.differentai.openwork.plist",
  ]
end
