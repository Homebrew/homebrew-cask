cask "pulse" do
  version "0.20.0"
  sha256 "ea3b06cea25f2a24f30cc38f2f879d43ae6b1b2868d0cab092bb0e2acfea9a31"

  url "https://github.com/kean/Pulse/releases/download/#{version}/Pulse-macos.zip",
      verified: "github.com/kean/Pulse/"
  name "Pulse"
  desc "Logger and network inspector"
  homepage "https://kean.blog/pulse/home"

  livecheck do
    url "https://github.com/kean/Pulse/releases/"
    strategy :page_match
    regex(%r{v?(\d+(?:\.\d+)+)/Pulse[._-]macos\.zip}i)
  end

  app "Pulse.app"

  zap trash: [
    "~/Library/Application Scripts/com.github.kean.pulse",
    "~/Library/Containers/com.github.kean.pulse",
  ]
end
