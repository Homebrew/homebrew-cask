cask "amiberry" do
  arch arm: "arm64", intel: "x86_64"

  version "7.0.0-RC2"

  on_arm do
    sha256 "2e08234ef0e9ad6de32f9e3efe48ae6767699458372835c85b19703234af22fd"

    url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/amiberry-v#{version}-macOS-apple-silicon.zip"
  end
  on_intel do
    sha256 "24d36e0592f70f26edb661a5ba22995843dc05bf40101da8cec043108cdcd2c6"

    url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/amiberry-v#{version}-macOS-x86_64.zip"
  end

  name "Amiberry"
  desc "Optimized Amiga emulator for multiple platforms"
  homepage "https://github.com/BlitterStudio/amiberry"

  livecheck do
    url "https://github.com/BlitterStudio/amiberry"
    strategy :github_latest
  end

  app "Amiberry.app"

  zap trash: [
    "~/Documents/Amiberry",
    "~/Library/Application Support/Amiberry'",
  ]
end
