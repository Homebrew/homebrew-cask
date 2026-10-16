cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.0.16625370"
  sha256 arm:          "a9601000fae0f40d9428b05b57ff11f101428581ec0e54b9eb5e3daf8c0492ca",
         intel:        "0a2788260a88b78191f23155ce21be0b4b2d7f0801243b555dfe482a47ef79dd",
         x86_64_linux: "c8f88b14aa00e44a542dd3597cbdcb015e55511e33c2dd69920f41f5b086e228"

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
