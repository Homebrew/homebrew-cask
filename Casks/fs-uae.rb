cask "fs-uae" do
  arch arm: "ARM64", intel: "x86-64"

  version "3.1.66"
  sha256 arm:   "7dc51930740a0634505f18a076b78fdbe97de09eed6888a61c7dc2022e94643d",
         intel: "c0c83858e80e3e150065e74669d1fefd4e9773c90b00b6bfbe9abd43a5b90840"

  url "https://fs-uae.net/files/FS-UAE/Stable/#{version}/FS-UAE_#{version}_macOS_#{arch}.tar.xz"
  name "FS-UAE"
  desc "Amiga emulator"
  homepage "https://fs-uae.net/"

  livecheck do
    url "https://fs-uae.net/builds/stable"
    regex(/href=.*?FS[._-]UAE[._-](\d+(?:\.\d+)+)[._-]macOS[._-]/i)
  end

  depends_on cask: "fs-uae-launcher"

  app "FS-UAE/macOS/#{arch}/FS-UAE.app"
end
