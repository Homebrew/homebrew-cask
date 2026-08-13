cask "segger-embedded-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "8.30a"
  sha256 arm:   "8836401bc7b9e774da112445c8e104134f20944077338d7ecff105a14685547e",
         intel: "3174e6dbe76a40da5c29ab03c866f4981df73f7e0a53f66ab142c4edfea11797"

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
