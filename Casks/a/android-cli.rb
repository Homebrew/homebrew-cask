cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.1.16919734"
  sha256 arm:          "3a7992f7b56974cddadeaeac66b2282c097a41c7660b39ead21a1cc8cc195143",
         intel:        "282ffe82646446137ab9ac1227375353783750823a0d0af4e953fae0eceea0b6",
         x86_64_linux: "2aabb936c5e67d580ba164a9ee6c01e5142db55e2cd567b5c57a25d92b1b84cf"

  on_linux do
    depends_on arch: :x86_64
  end

  url "https://dl.google.com/android/cli/#{version}/#{os}_#{arch}/android"
  name "Android CLI"
  desc "Command-line interface for Android app development with AI agents"
  homepage "https://developer.android.com/tools/agents/android-cli"

  livecheck do
    url "https://dl.google.com/android/cli/latest/#{os}_#{arch}/METADATA"
    regex(/version=v?(\d+(?:\.\d+)+)/i)
  end

  binary "android"

  zap trash: [
    "~/.android",
    "~/Library/Android",
  ]
end
