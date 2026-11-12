cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.12"
  sha256 arm:   "8dd84a23152567f31fc14817699a2de629eed36eda14fe81da4f9c6c5da638e7",
         intel: "64052c9a2db823ce6c75128f779fc3ff5b47249cb44ec88d5361da025e3c90af"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}.dmg"
  name "ColaMD"
  desc "Markdown editor"
  homepage "https://colamd.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ColaMD.app"

  zap trash: [
    "~/.colamd",
    "~/Library/Application Support/colamd",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.marswave.colamd.sfl*",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
