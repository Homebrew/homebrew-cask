cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.1.16717390"
  sha256 arm:          "564d8ad922e8026b75915b3a7e8dafa9c2da7a209bde005edaf5c30e97a5aea5",
         intel:        "37f4b613b859ab49c3598ecf28b75526044ea29dcfac73145dc58e52143b5335",
         x86_64_linux: "43204dcc42955f4698b7a7ca945f26c26f594f9239f5f8e11b3b73d4ceaa11ae"

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
