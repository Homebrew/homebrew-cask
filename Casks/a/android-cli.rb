cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.0.16500706"
  sha256 arm:          "52618946fb521fa08de5729181d12cb9190a5d6a2e8e869f71799808bc82792e",
         intel:        "003a4b7d8e2f282010afdc47a9856dc66a3ed688204549e762d868abbd87c624",
         x86_64_linux: "54b6e2d382444b91511fcc7ab34ddec6561f257d6d1cdce16bb91af6789b6de2"

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
