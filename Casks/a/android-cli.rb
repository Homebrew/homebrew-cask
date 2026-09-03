cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.0.16251017"

  on_macos do
    sha256 arm:   "6e21aa82773e369bf69a799d10983cb12060f4f71fa7748d0d6d8941bbcc3ae9",
           intel: "314502c7b0fd7de4b6a5488f41223969930b875c94011b0cf4caefdd9c82cfb7"
  end
  on_linux do
    sha256 "5fcc6ed28d0dacda59dc9fca276aba94c496e286ec3cfb9a3c91b68b4d609144"

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
