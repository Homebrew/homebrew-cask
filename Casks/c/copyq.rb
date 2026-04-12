cask "copyq" do
  arch arm: "12-m1", intel: "13"

  version "15.0.0"
  sha256 arm:   "12ce0078376915e4950ffcbb72070fbf6ba0a79c5d96c193039fbdbd7425f353",
         intel: "0ca67c1db53cc769ca28152bffa4738d7b50da03f90337a88d5adc6e09891235"

  on_arm do
    depends_on macos: ">= :monterey"
  end
  on_intel do
    depends_on macos: ">= :ventura"
  end

  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-#{version}-macos-#{arch}.dmg",
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
