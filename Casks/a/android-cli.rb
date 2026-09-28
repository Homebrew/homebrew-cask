cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.0.16457483"
  sha256 arm:          "99623a9252a90585c8e977c20811cb1f8b220be826e6d6e555faa802b60bc02d",
         intel:        "d352652929e8899608549dd6aa74607e513d4be58f5c648ab8122cc3eb448efc",
         x86_64_linux: "02e04ae27ee7b5bbd479468d037def1096f84836d418e7f6bbcd893e044508b4"

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
