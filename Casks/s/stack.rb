cask "stack" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.3-20260618"
  sha256 arm:   "3353444d37321ed4e94c3dfe9b0c99d2e125179126a6c9e0ce35253f847321dc",
         intel: "c45c39eda23816539fb3f13d220fb847575ba8ada69710f8d7111ec1baf81690"

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
