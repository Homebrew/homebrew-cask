cask "fs-uae" do
  arch = Hardware::CPU.intel? ? "x86-64" : "ARM64"

  version "3.1.62"

  if Hardware::CPU.intel?
    sha256 "bc9f56ed362ba83120ba1f744b3048500a4be46877154ae0fe65af7987770961"
  else
    sha256 "884fede8792e031cb7e4dee67d880d8c6aa358e934fa5bc12e73b1baa54f5888"
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
