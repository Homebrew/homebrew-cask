cask "stack" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.3-20260619"
  sha256 arm:   "bf297418c881a822d97e8cde849c69d9f796fc99e4e6e12120f7599b83899143",
         intel: "12363dbd10b8fd027bf6bb90ef0cfee77ea2e7ebef832af317ba66eeae148d11"

  url "https://filehosting-client.transip.nl/packages/stack/v#{version}/macos/stack-v#{version}.#{arch}.dmg"
  name "STACK"
  desc "Personal online hard drive to store, view and share files"
  homepage "https://www.transip.nl/stack/"

  livecheck do
    url "https://filehosting-client.transip.nl/packages/stack-macos-latest.#{arch}.dmg"
    regex(/stack[._-]v?(\d(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  depends_on macos: :ventura

  app "stack.app"

  uninstall signal:     ["TERM", "nl.transip.stack"],
            login_item: "stack",
            pkgutil:    "nl.transip.stack"

  zap trash: [
    "~/Library/Application Support/STACK",
    "~/Library/Caches/nl.transip.stack",
  ]
end
