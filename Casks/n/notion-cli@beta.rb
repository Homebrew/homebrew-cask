cask "notion-cli@beta" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.13.2"
  sha256 arm:          "40ce5ed7490f9371bc52a28918723f5c2010bf7d9b7a7b30273d8b63b30d5054",
         intel:        "18dd6f6c289d24f6ef609160923d4ca02f66ea46910b45feae44a028096d7254",
         arm64_linux:  "21c6b57dd7e7dbf8bd653191b3b8c0c0142042c24939ebab46048a7b9f22e2e7",
         x86_64_linux: "44bbcf91e113bd33ef5275d1ee45160f4463bddae53beaeb381273f797d349c9"

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
