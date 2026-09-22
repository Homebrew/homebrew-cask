cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.0.16406183"
  sha256 arm:          "e05a99a87a0be8436a59bc76d3ca992bba0f30cb94eb4035d7c351cbabb72457",
         intel:        "8b422087be0996a2f25fa194a8d87b4f44b218003d57a17e7a3cd3d2b0ffd083",
         x86_64_linux: "1e7f2da1bb678bdb3c78a20b421a276f6b9eb639f0b6a17d46fa02f01a0b67b4"

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
