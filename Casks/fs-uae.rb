cask "fs-uae" do
  arch = Hardware::CPU.intel? ? "x86-64" : "ARM64"

  version "3.1.48"

  if Hardware::CPU.intel?
    sha256 "399f4260eafb8dd7ae886232ce5db8b9c911a4a4d966d2881cf16dc305b0ccf1"
  else
    sha256 "20a84b7705372a48247165397e6c7ac5d9ff29bb0985dd72e734c109eefa803d"
  end

  url "https://fs-uae.net/files/FS-UAE/Stable/#{version}/FS-UAE_#{version}_macOS_#{arch}.tar.xz"
  name "FS-UAE"
  desc "Amiga emulator"
  homepage "https://fs-uae.net/"

  livecheck do
    url "https://fs-uae.net/builds/stable"
    strategy :page_match
    regex(/href=.*?FS[._-]UAE[._-](\d+(?:\.\d+)+)[._-]macOS[._-]/i)
  end

  depends_on cask: "fs-uae-launcher"

  app "FS-UAE/macOS/#{arch}/FS-UAE.app"
end
