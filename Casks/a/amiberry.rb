cask "amiberry" do
  arch arm: "arm64", intel: "x86_64"
  version "5.7.4"

  on_arm do
    sha256 "797fe35d9934973ac99be9260620032ec52d5fe5a148616aea0ec5c844185266"
    url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/amiberry-v#{version}-macOS-apple-silicon.zip"
  end

  on_intel do
    sha256 "1866d24ae7f34b083b7be2b8bcea6b1a76cd122e725c80e5347de5cc455cf8c4"
    url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/amiberry-v#{version}-macOS-x86_64.zip"
  end
    
  name "Amiberry"
  desc "Optimized Amiga emulator for multiple platforms"
  homepage "https://amiberry.com/"
  app "Amiberry.app"

  zap trash: [
    "~/Documents/Amiberry",
    "~/Library/Application Support/Amiberry'",
  ]

end