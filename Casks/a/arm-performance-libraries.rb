cask "arm-performance-libraries" do
  version "25.04.1"
  install_suffix="#{version.major_minor}_flang-new_clang_19"
  sha256 "6917cbccc1decb3ca8c9cbcddaec70284c6dbfa1f6d32c0780db572c3b00cc36"

  url "https://developer.arm.com/-/cdn-downloads/permalink/Arm-Performance-Libraries/Version_#{version}/arm-performance-libraries_#{version.major_minor}_macOS.tgz"
  name "Arm Performance Libraries"
  desc "Optimized standard core math libraries for Arm processors"
  homepage "https://developer.arm.com/downloads/-/arm-performance-libraries"

  livecheck do
    url :homepage
    regex(/Version[._-]v?(\d+(?:\.\d+)+)/i)
  end

  no_autobump! because: :requires_manual_review

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
