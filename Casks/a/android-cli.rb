cask "android-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "1.0.16261425"

  on_macos do
    sha256 arm:   "9f9d6c249ecac3dfa65971ca63abe29986d27e8f87f153097f44da8e369707bf",
           intel: "000ff9cee76440e5ebdbcdb285c599c58b008d93b57d62fde50c62472c6715b4"
  end
  on_linux do
    sha256 "5f4d1c3db15d664554cd14bf4f5496771fcb25617dd99ac1719f8de5e59ac22c"

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
