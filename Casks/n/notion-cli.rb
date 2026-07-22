cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.19.2"
  sha256 arm:          "5bc1bd9415113615e78477b4a38d31c24aace709f5848148cfa0bd9523803130",
         intel:        "2ed81c727ac3ecd4c3037bbced02f9b994ba6501b2921a2c7f7f539dd30cf92d",
         arm64_linux:  "2f647d692c320756866a59d729c3f863d5613349a84f583becee2162b60c349b",
         x86_64_linux: "099a558cd190603e33dfb6a7a4206e0db050329b6e1f855046ccec5a7901315e"

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
