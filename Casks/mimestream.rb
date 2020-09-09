cask "mimestream" do
  version "0.6.17"
  sha256 "f26f4d50e8b7a655289e074da253fbf15c47093386ab9cbefe6ab18a25dfc193"

  # storage.googleapis.com was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/mimestream-releases/Mimestream_#{version}.dmg"
  appcast "https://mimestream.com/releases"
  name "Mimestream"
  desc "Native email client for Gmail"
  homepage "https://mimestream.com/"

  depends_on macos: ">= :catalina"

  app "Mimestream.app"
end
