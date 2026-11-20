cask "junie" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4100.11"
  sha256 arm:          "2ac8ac81f21d8dcc9f7649962f6b5c970f2994184942db4d58e2c8bdeb9b5b33",
         intel:        "dd4b75c999801f551145f460c0b62f9cadacdf835b15000320da813064514336",
         arm64_linux:  "762cb7a5ea72529a1028c438abfcc743ab44e55f2257a0331ecebc2bb968cff8",
         x86_64_linux: "7a8747acade2ce2eda440756d7964d86f4ce96269bec2147f2a28176bc217f52"

  on_macos do
    binary "Applications/junie.app/Contents/MacOS/junie"
  end
  on_linux do
    binary "junie-app/bin/junie"
  end

  url "https://github.com/JetBrains/junie/releases/download/#{version}/junie-release-#{version}-#{os}-#{arch}.zip"
  name "Junie"
  desc "AI coding agent by JetBrains"
  homepage "https://junie.jetbrains.com/"

  livecheck do
    url "https://raw.githubusercontent.com/jetbrains-junie/junie/main/update-info.jsonl"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  zap trash: [
    "~/.junie",
    "~/.local/share/junie",
  ]
end
