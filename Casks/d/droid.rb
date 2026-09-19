cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.223.0"
  sha256 arm:   "efed63e905bcc6f7e17d9deaf6542b4a4d5cff7dcb3a7a4315a31c471050f925",
         intel: "2d2f2d6f4e39fad0f4f8da9c3f3bc1fd2b014c910aaa889d2641e5aa1b4e4cab"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
