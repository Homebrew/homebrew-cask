cask "stack" do
  version "2.8.2-20210809"
  sha256 "2c684b4acf039556ab1103834a806b066fbc93fe5fc74a4b7a6286f665aed6a2"

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
