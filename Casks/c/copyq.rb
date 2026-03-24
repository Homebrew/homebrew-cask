cask "copyq" do
  arch arm: "12-m1", intel: "13"

  version "14.0.0"
  sha256 arm:   "d7863011c1801f030db884656fbe8c5435e19dfbcec25529203ebc88c3f10663",
         intel: "4d51fbbba91d680a64a52dc50937eb644b7cd4b8be48b30f93ecaae966efbb6d"

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
