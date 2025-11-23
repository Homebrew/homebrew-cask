cask "stack" do
  arch arm: "arm64", intel: "x86_64"

  version "5.3.1-20240731"
  sha256 arm:   "bd8efc4954f7f6e14f0b55ed19cd462008943cce5d7a9dd3c7b8362a283e8d0f",
         intel: "11788fd9d523bfa215b2bed2478717d7f58f096f31bdadd5dc415a9c1081aa45"

  url "https://filehosting-client.transip.nl/packages/stack/v#{version}/macos/stack-v#{version}.#{arch}.dmg"
  name "STACK"
  desc "Personal online hard drive to store, view and share files"
  homepage "https://www.transip.nl/stack/"

  livecheck do
    url "https://filehosting-client.transip.nl/packages/stack-macos-latest.#{arch}.dmg"
    regex(/stack[._-]v?(\d(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  app "stack.app"

  uninstall signal:     ["TERM", "nl.transip.stack"],
            login_item: "stack",
            pkgutil:    "nl.transip.stack"

  zap trash: [
    "~/Library/Application Support/STACK",
    "~/Library/Caches/nl.transip.stack",
  ]
end
