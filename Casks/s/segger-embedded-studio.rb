cask "segger-embedded-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "8.30b"
  sha256 arm:   "4c88289cd1c3937751a5237cabea6fe26b00ce8b723d158bd8416816e419908e",
         intel: "ebf7852af6660a10585968354e129161d89c4ef218fd00ccf7a5c111c1ef1906"

  url "https://www.segger.com/fd/embedded-studio/Setup_EmbeddedStudio_v#{version.no_dots}_macOS_#{arch}.dmg"
  name "SEGGER Embedded Studio for Arm and RISC-V"
  desc "IDE for embedded systems"
  homepage "https://www.segger.com/products/development-tools/embedded-studio/"

  livecheck do
    url "https://studio.segger.com/segger_studio_release_notes.htm"
    regex(/<h2[^>]*>\s*Version\s*(\d+(?:\.\d+)+[a-z]?)/i)
  end

  depends_on :macos

  pkg "Install SEGGER Embedded Studio #{version}.pkg"

  uninstall pkgutil: [
    "com.segger.studio.segger_studio.#{version}",
    "com.segger.studio.segger_studio.cruntime.source.#{version}",
    "com.segger.studio.segger_studio.gcc.arm.#{version}",
    "com.segger.studio.segger_studio.gcc.riscv.#{version}",
    "com.segger.studio.segger_studio.libcxx.source.#{version}",
    "com.segger.studio.segger_studio.segger.toolchain.#{version}",
  ]

  zap trash: "/Applications/SEGGER/SEGGER Embedded Studio*"

  caveats do
    license @cask.url.to_s
  end
end
