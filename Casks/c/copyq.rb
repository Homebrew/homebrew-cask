cask "copyq" do
  arch arm: "12-m1", intel: "13"

  version "16.0.0"
  sha256 arm:   "57563fb2ca24751974c35b744ca7ea2c5c171bc5c00f59b3c8379912876ae4b1",
         intel: "817a35cc5e143207496d78ccc0d8dd62a9858fece8099d1f4591d00b24dbca27"

  on_arm do
    depends_on macos: :monterey
  end
  on_intel do
    depends_on macos: :ventura
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

  depends_on :macos

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
