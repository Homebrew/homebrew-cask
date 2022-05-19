cask "stack" do
  version "2.10.1-20220504"
  sha256 "da2c1db8f6f73b7635f78df26d5f4d150a710d18ad803ed1644f563c944009f4"

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
