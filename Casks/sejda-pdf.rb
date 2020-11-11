cask "sejda-pdf" do
  version "7.1.2"
  sha256 "7fd6f4e4ebdc58ab6d60ce934e43be46d4f4e502788acd1fe8fbf16189217718"

  # sejda-cdn.com/ was verified as official when first introduced to the cask
  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg"
  appcast "https://www.sejda.com/desktop"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  app "Sejda PDF Desktop.app"
end
