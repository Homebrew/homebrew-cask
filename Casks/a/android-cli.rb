cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.0.16486076"
  sha256 arm:          "e0254a9e06ae63afe0edac3f3eb6046fe81d8be4d0f5a8eba75299400af278c9",
         intel:        "a6bebeadc0fbe5e21cdb8c11bcfce04f5cb7b99a6ed34571523404c876d7016f",
         x86_64_linux: "9be791d78ef7706b25e037d07f56765bd86f01c38d6b7cf1412d207ffdf0af4f"

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
