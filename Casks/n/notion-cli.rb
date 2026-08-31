cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.11"
  sha256 arm:          "c2419042c3a0c8111e8b4f84a4b5f7d75bf5a8558ec9b2d6b87f611037e1b1ba",
         intel:        "edfb67c02a15b44d2023107ae5e123c208a6b69acd0e5a1f270db572d1a19544",
         arm64_linux:  "ba532e57011a03bd43eb3077a53c3581c8ad5fc73d96ff16aa406c7252d6e69d",
         x86_64_linux: "05fdbd24da2c34a0d1843e26b1c3dd51628b7ebd790630f4d8e5a6ef0076481a"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz",
      verified: "ntn.dev/"
  name "Notion CLI"
  desc "Command-line interface for Notion"
  homepage "https://www.notion.com/product/dev"

  livecheck do
    url "https://ntn.dev/latest.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ntn-#{arch}-#{os}/ntn"

  zap trash: "~/.notion"
end
