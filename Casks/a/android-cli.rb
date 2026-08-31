cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.0.15985488"

  on_macos do
    sha256 arm:   "0fa343fda9433b7c74e4eb91d3a18cec60477a29c015a018dd189222a3d0d020",
           intel: "f23a02c5c11dda6fd6aaa1dbaf572be8525119f46f6493e01c3e91f9f5b4817c"
  end
  on_linux do
    sha256 "7d0f4b41e6511ab6eeeaec4b885442f02aded270cf83cb75f521aca2c03d593d"

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
