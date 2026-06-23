cask "segger-embedded-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "8.28a"
  sha256 arm:   "5bef71ffbdfa88a9b563d35bea9b9a73154cab35b08202c051b4c6755082ae5a",
         intel: "cba8760c784a47f801a1f3797dc0c5476bbf54e83e56c378a0234d49e3a85544"

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
