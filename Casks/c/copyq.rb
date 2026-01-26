cask "copyq" do
  arch arm: "12-m1", intel: "13"

  version "13.0.0"
  sha256 arm:   "2eb743cc57a97fde6c71d6ec0587408ae2beb41939699117d32b74e68882e77e",
         intel: "12087e0b9788d8e2b8e055759444346ffbe8901189219c941a3e3d631784bf98"

  on_arm do
    depends_on macos: ">= :monterey"
  end
  on_intel do
    depends_on macos: ">= :ventura"
  end

  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-macos-#{arch}.dmg.zip",
      verified: "github.com/hluk/CopyQ/"
  name "CopyQ"
  desc "Clipboard manager with advanced features"
  homepage "https://hluk.github.io/CopyQ/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "CopyQ.app"

  zap trash: [
    "~/.config/copyq",
    "~/Library/Application Support/copyq",
    "~/Library/Application Support/copyq.log",
    "~/Library/Preferences/com.copyq.copyq.plist",
  ]

  caveats do
    unsigned_accessibility
  end
end
