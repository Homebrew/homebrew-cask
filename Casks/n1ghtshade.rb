cask "n1ghtshade" do
  version "1.0"
  sha256 "e1fb23833e9261244e52bb318f456fccbe1482082cdd0995f63babd47af2b746"

  url "https://github.com/synackuk/n1ghtshade/releases/download/#{version}/n1ghtshade.app.zip"
  name "n1ghtshade"
  desc "Permits the downgrade/jailbreak of 32-bit iOS devices"
  homepage "https://github.com/synackuk/n1ghtshade"

  livecheck do
    url :url
    regex(/v?([\w._-]+)/i)
    strategy :github_latest
  end

  depends_on formula: %w[
    libimobiledevice
    libirecovery
    libplist
    libusb
    libusbmuxd
    libzip
    openssl
  ]

  app "n1ghtshade.app"

  zap trash: "~/Library/Application Support/n1ghtshade"
end
