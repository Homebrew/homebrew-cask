cask "n1ghtshade" do
  version "RC3"
  sha256 "b9a5138511d6164bb2dfe0002dbc9f31ae157e45d7097edbd4f804172645e00e"

  url "https://github.com/synackuk/n1ghtshade/releases/download/#{version}/n1ghtshade-macos.zip"
  appcast "https://github.com/synackuk/n1ghtshade/releases.atom"
  name "n1ghtshade"
  desc "Permits the downgrade/jailbreak of 32-bit iOS devices"
  homepage "https://github.com/synackuk/n1ghtshade"

  depends_on formula: [
    "libimobiledevice",
    "libirecovery",
    "libplist",
    "libusb",
    "libusbmuxd",
    "libzip",
    "openssl",
  ]

  app "n1ghtshade.app"

  zap trash: "~/Library/Application Support/n1ghtshade"
end
