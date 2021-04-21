cask "prudent" do
  version "86.0.4240.75.49.0.24,24"
  sha256 "7cc3e261608c7eb7e5c8ab996c8c171e12e7fd8ceacdb2d7a69b8f086b6483c6"

  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip",
      verified: "github.com/PrudentMe/main/"
  appcast "https://github.com/PrudentMe/main/releases.atom",
          must_contain: version.after_comma
  name "Prudent"
  homepage "https://prudent.me/"

  app "Prudent.app"
end
