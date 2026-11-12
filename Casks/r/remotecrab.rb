cask "remotecrab" do
  version "1.4.0"
  sha256 "add15cf17f812d6cccd19a95695cdc67f4c9094011021f4d7f01c6578892511b"

  url "https://vgoapp.com/downloads/RemoteCrab-#{version}.dmg"
  name "RemoteCrab"
  desc "Use an iPhone or iPad as camera, microphone, display and trackpad"
  homepage "https://vgoapp.com/remotecrab/"

  livecheck do
    url "https://vgoapp.com/downloads/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "RemoteCrab.app"

  caveats <<~EOS
    RemoteCrab asks for two macOS permissions on first launch:
      Accessibility (System Settings > Privacy & Security)
      A camera extension (System Settings > General > Login Items & Extensions)

    The iPhone/iPad app is required to connect, and is free on the App Store:
      https://apps.apple.com/app/id6811599153
  EOS
end
