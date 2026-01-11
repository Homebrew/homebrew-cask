cask "doxygen-app" do
  arch arm: "arm", intel: "intel"

  version "1.16.1"
  sha256 arm:   "f473c0f76cc969309b86c0f441934e844bc9c049112ae3482678bd45a7c8a28c",
         intel: "ec2b4714b6b3fbef0ecdc1778bc7cf60a83b902cd5d6ff37e4733ff74f359a51"

  url "https://www.doxygen.nl/files/Doxygen-#{version}-#{arch}.dmg"
  name "Doxygen"
  desc "Generate documentation from source code"
  homepage "https://www.doxygen.nl/"

  livecheck do
    url "https://www.doxygen.nl/download.html"
    regex(/href=.*?Doxygen[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :sequoia"

  app "Doxygen.app"

  zap trash: [
    "~/Library/Preferences/org.doxygen.Doxywizard.plist",
    "~/Library/Preferences/org.doxygen.plist",
    "~/Library/Saved Application State/org.doxygen.savedState",
  ]
end
