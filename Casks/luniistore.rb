cask "luniistore" do
  arch arm: "arm64", intel: "i386"

  version "2.6.312"
  sha256 arm:   "922603785e55f11dda4776af851763f20d579f6bb1c8ac4b6ef83e2506555490",
         intel: "f235a1bac95b76488fcb6582ca86208a796e4467c69e9224ef0db6aefbb2714f"

  url "https://storage.googleapis.com/storage.lunii.fr/public/deploy/installers/macos/#{arch}/Luniistore-#{version}-#{arch}.pkg",
      verified: "storage.googleapis.com/storage.lunii.fr/public/deploy/installers/macos/"
  name "Luniistore"
  desc "Access more albums and transfer them to My Fabulous Storyteller"
  homepage "https://lunii.com/"

  livecheck do
    url "https://downloads.lunii.com/v1/luniistore-installers/ln-ins-default-mac-os"
    strategy :header_match
  end

  auto_updates true

  pkg "Luniistore-#{version}-#{arch}.pkg"

  uninstall pkgutil: "com.lunii.luniistore",
            quit:    "com.lunii.luniistore",
            delete:  "/Applications/Luniistore.app"

  zap trash: [
    "~/Library/Application Support/Luniitheque",
    "~/Luniistore",
  ]
end
