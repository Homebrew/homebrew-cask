cask "fs-uae" do
  arch = Hardware::CPU.intel? ? "x86-64" : "ARM64"

  version "3.1.47"

  if Hardware::CPU.intel?
    sha256 "3138883d0371f45d92cdc1bf1c514ced211bda36f2495cee1a59d0b065791fd8"
  else
    sha256 "e51392bff6aa70cf675b621c246f4f84bda6a1678d17411ba4b733e13bf298a4"
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
