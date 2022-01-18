cask "stack" do
  version "2.9.2-20211214"
  sha256 "2c06af6a7bb3f3bc4135d943991a644878a8bf8a1da5416652bd8d70f5d0b4c9"

  url "https://mirror.transip.net/stack/software/osx/stack-#{version}.dmg",
      verified: "transip.net/stack/"
  name "STACK"
  desc "Personal online hard drive to store, view and share files"
  homepage "https://www.transip.nl/stack"

  livecheck do
    url "https://mirror.transip.net/stack/software/osx/"
    regex(/href=.*?stack[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  app "stack.app"

  uninstall login_item: "stack",
            signal:     ["TERM", "nl.transip.stack"],
            pkgutil:    "nl.transip.stack"

  zap trash: [
    "~/Library/Application Support/STACK/",
    "~/Library/Caches/nl.transip.stack",
  ]
end
