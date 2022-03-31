cask "bzflag" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  version "2.4.24"

  if Hardware::CPU.intel?
    sha256 "736a80cb19e6b86d0632afe831c344b16dd3bbe69d235f5335a77c9a50dee3f5"
  else
    sha256 "2ee497a006dff98ca7cab6bb01dd10a279c7cea22490bf0baa3cf7d87e50e4a0"
  end

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS-#{arch}.zip"
  name "BZFlag"
  desc "3D multi-player tank battle game"
  homepage "https://www.bzflag.org/"

  livecheck do
    url "https://github.com/BZFlag-Dev/bzflag"
    strategy :github_latest
  end

  app "BZFlag-#{version}.app"
end
