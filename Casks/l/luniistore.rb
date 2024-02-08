cask "luniistore" do
  arch arm: "arm64", intel: "i386"

  version "2.6.312"
  sha256 arm:   "922603785e55f11dda4776af851763f20d579f6bb1c8ac4b6ef83e2506555490",
         intel: "f235a1bac95b76488fcb6582ca86208a796e4467c69e9224ef0db6aefbb2714f"

  url "https://storage.googleapis.com/storage.lunii.fr/public/deploy/installers/macos/#{arch}/Luniistore-#{version}-#{arch}.pkg",
      verified: "storage.googleapis.com/storage.lunii.fr/"
  name "Luniistore"
  desc "Utility for My Fabulous Storyteller"
  homepage "https://lunii.com/"

  livecheck do
    url "https://downloads.lunii.com/v1/luniistore-installers/ln-ins-default-mac-os"
    strategy :header_match
  end

  auto_updates true

  pkg "Luniistore-#{version}-#{arch}.pkg"

  postflight do
    # The postinstall script automatically opens the app. Therefore, we must
    # suppress this behavior to make the cask installation non-interactive.
    retries ||= 3
    ohai "The Luniistore package postinstall script launches the app" if retries >= 3
    ohai "Attempting to close Luniistore to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/Luniistore.app"]
  end

  uninstall quit:    "com.lunii.luniistore",
            pkgutil: "com.lunii.luniistore"

  zap trash: [
    "~/Desktop/Luniistore",
    "~/Library/Application Support/Luniitheque",
    "~/Library/Saved Application State/com.lunii.luniistore.savedState",
    "~/Luniistore",
  ]
end
