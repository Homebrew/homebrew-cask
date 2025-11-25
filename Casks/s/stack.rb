cask "stack" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.2-20251124"
  sha256 arm:   "21db02b3ffb7efa634115fa0976a6ca69840aa2bb346fc332fbaaa75c5da39ab",
         intel: "bc1330291c618aef19537ba073e02f421a068a1d617af960775b24e11f3a737d"

  url "https://filehosting-client.transip.nl/packages/stack/v#{version}/macos/stack-v#{version}.#{arch}.dmg"
  name "STACK"
  desc "Personal online hard drive to store, view and share files"
  homepage "https://www.transip.nl/stack/"

  livecheck do
    url "https://filehosting-client.transip.nl/packages/stack-macos-latest.#{arch}.dmg"
    regex(/stack[._-]v?(\d(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "stack.app"

  uninstall signal:     ["TERM", "nl.transip.stack"],
            login_item: "stack",
            pkgutil:    "nl.transip.stack"

  zap trash: [
    "~/Library/Application Support/STACK",
    "~/Library/Caches/nl.transip.stack",
  ]
end
