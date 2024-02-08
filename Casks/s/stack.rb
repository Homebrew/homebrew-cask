cask "stack" do
  version "2.11.1-20220906"
  sha256 "d5b92e5f0070fbd1f92c36be58e0c979efcceb79b685dd7e665ebf165d70a82c"

  url "https://filehosting-client.transip.nl/packages/stack/v#{version}/macos/stack-v#{version}.dmg"
  name "STACK"
  desc "Personal online hard drive to store, view and share files"
  homepage "https://www.transip.nl/stack/"

  livecheck do
    url "https://filehosting-client.transip.nl/packages/stack/"
    regex(%r{href=["'](?:.*?/)?v?(2(?:[.-]\d+)+)["' >]}i)
  end

  app "stack.app"

  uninstall signal:     ["TERM", "nl.transip.stack"],
            login_item: "stack",
            pkgutil:    "nl.transip.stack"

  zap trash: [
    "~/Library/Application Support/STACK/",
    "~/Library/Caches/nl.transip.stack",
  ]
end
