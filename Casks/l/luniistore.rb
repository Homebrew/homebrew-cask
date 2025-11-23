cask "luniistore" do
  arch arm: "arm64", intel: "i386"

  version "4.0.312"
  sha256 arm:   "8832d1e84d5897f9e4b334097b38485906f2a8bccfa552b0245798dc8a94b498",
         intel: "6cde650bbc5a4ed23539eca2eb7bf4ff16777469601fd9c02fe9a8dce2375c9c"

  url "https://storage.googleapis.com/storage.lunii.fr/public/deploy/installers/macos/#{arch}/Lunii-#{version}-#{arch}.pkg",
      verified: "storage.googleapis.com/storage.lunii.fr/"
  name "Luniistore"
  desc "Utility for My Fabulous Storyteller"
  homepage "https://lunii.com/"

  livecheck do
    url "https://downloads.lunii.com/v1/luniistore-installers/ln-ins-default-mac-os"
    strategy :header_match
  end

  auto_updates true

  pkg "Lunii-#{version}-#{arch}.pkg"

  postflight do
    # The postinstall script automatically opens the app. Therefore, we must
    # suppress this behavior to make the cask installation non-interactive.
    retries ||= 3
    ohai "The Luniistore package postinstall script launches the app" if retries >= 3
    ohai "Attempting to close Luniistore to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/Lunii.app"]
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
