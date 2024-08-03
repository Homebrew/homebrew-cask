cask "arm-performance-libraries" do
  version "24.04"
  install_suffix="#{version}_flang-new_clang_18"
  sha256 "228bf3a2c25dbd45c2f89c78f455ee3c7dfb25e121c20d2765138b5174e688dc"

  url "https://developer.arm.com/-/media/Files/downloads/hpc/arm-performance-libraries/#{version.dots_to_hyphens}/macos/arm-performance-libraries_#{version}_macOS.tgz"
  name "Arm Performance Libraries"
  desc "Optimized standard core math libraries for Arm processors"
  homepage "https://developer.arm.com/downloads/-/arm-performance-libraries"

  livecheck do
    url "https://developer.arm.com/downloads/-/arm-performance-libraries"
    regex(/Version[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on arch: :arm64

  installer script: {
    executable: "armpl_#{install_suffix}_install.sh",
    args:       ["-y"],
    sudo:       true,
  }

  uninstall delete: [
              "/opt/arm/arm-performance-libraries_#{install_suffix}",
              "/opt/arm/armpl_#{install_suffix}",
            ],
            rmdir:  "/opt/arm"

  # No zap stanza required

  caveats do
    license "https://developer.arm.com/documentation/109686/latest"
    "You may need to source /opt/arm/armpl_#{install_suffix}/armpl_env_vars.sh in order to use these libraries."
  end
end
